//
//  GameScene.swift
//  chicken-nugget-app
//
//  Created by jenna on 30/8/25.
//

import Foundation
import SpriteKit
import SwiftUI

@Observable class PongGameScene: SKScene {
    var taskCompleted = false
    var lastTapped: CGPoint = .zero
    var dampingFactor = 0.08
    
    override func didMove(to view: SKView) {
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        self.size = view.frame.size
        self.lastTapped = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        self.backgroundColor = .clear
        self.physicsWorld.gravity = CGVector(dx: 0, dy: -1.8)
        
        // spawn ball
        let ball = SKShapeNode(circleOfRadius: 10)
        ball.fillColor = .blue
        ball.position = CGPoint(x: 150, y: 650)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: 10)
        ball.physicsBody!.affectedByGravity = true
        ball.physicsBody?.restitution = 0.6
        ball.name = "ball"
        
        addChild(ball)
        
        
        let bounds = view.bounds
        let floorPath = CGMutablePath()
        let bottomLeftCorner = CGPoint(x: bounds.minX, y: bounds.minY)
        let bottomRightCorner = CGPoint(x: bounds.maxX, y: bounds.minY)
        floorPath.move(to: bottomLeftCorner)
        floorPath.addLine(to: bottomRightCorner)
        let floor = SKShapeNode(path: floorPath)
        floor.name = "floor"
        floor.strokeColor = .white
        
        addChild(floor)
        
        let hollowBox = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 100, height: 20))
        hollowBox.strokeColor = .white
        hollowBox.name = "bin"
        hollowBox.fillColor = .green
        hollowBox.zPosition = -1
        hollowBox.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 100, height: 20))
        hollowBox.physicsBody?.allowsRotation = false
    
        addChild(hollowBox)
    }
    
    override func didChangeSize(_ oldSize: CGSize) {
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
        guard let touch = touches.first else { return }
        let location = touch.location(in: self.view)
        withAnimation {
            lastTapped = CGPoint(x: location.x, y: 60)
        }
    }
    
    func fireBall() {
        if let ball = childNode(withName: "ball") {
            // Find difference between ball position and tap position then make a vector
            let difference = CGVector(dx: dampingFactor * (lastTapped.x + ball.position.x), dy: dampingFactor * (lastTapped.y + ball.position.y))
            ball.physicsBody?.applyImpulse(difference)
        }
    }
    func restart() {
        if let ball = childNode(withName: "ball"){
            ball.position = CGPoint(x: 150, y: 650)
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        if let floor = childNode(withName: "floor"), let ball = childNode(withName: "ball"), let bin = childNode(withName: "bin") as? SKShapeNode {
            bin.position = lastTapped
            if bin.contains(ball.position) {
                fireBall()
            }
            if floor.contains(ball.position){
                print("game over")
            }
        }
    }
    
}
