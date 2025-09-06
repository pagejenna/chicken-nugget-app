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
    var dampingFactor = 0.05
    
    override func didMove(to view: SKView) {
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        self.size = view.frame.size
        self.lastTapped = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        self.backgroundColor = .clear
        
        // spawn ball
        let location = CGPoint(x: 195, y: 200)
        let ball = SKShapeNode(circleOfRadius: 10)
        ball.fillColor = .blue
        ball.position = location
        ball.physicsBody = SKPhysicsBody(circleOfRadius: 10)
        ball.physicsBody!.affectedByGravity = true
        ball.name = "ball"
        addChild(ball)
        
        
        let bounds = view.bounds
        let floorPath = CGMutablePath()
        let bottomLeftCorner = CGPoint(x: bounds.minX, y: bounds.minY)
        let bottomRightCorner = CGPoint(x: bounds.maxX, y: bounds.minY)
        floorPath.move(to: bottomLeftCorner)
        floorPath.addLine(to: bottomRightCorner)
        let floor = SKShapeNode(path: floorPath)
        floor.strokeColor = .white
        
        addChild(floor)
        
        // add bin box
        let rect = CGRect(x: 0, y: 0, width: 100, height: 20)
        let path = CGMutablePath()
        let topLeft = CGPoint(x: rect.minX, y: rect.maxY)
        let bottomLeft = CGPoint(x: rect.minX, y: rect.minY)
        let bottomRight = CGPoint(x: rect.maxX, y: rect.minY)
        let topRight = CGPoint(x: rect.maxX, y: rect.maxY)
        path.move(to: topLeft)
        path.addLine(to: bottomLeft)
        path.addLine(to: bottomRight)
        path.addLine(to: topRight)
        let hollowBox = SKShapeNode(path: path)
        hollowBox.strokeColor = .white
        hollowBox.name = "bin"
        hollowBox.fillColor = .green
        hollowBox.zPosition = -1
        hollowBox.physicsBody = SKPhysicsBody(edgeChainFrom: path)
    
        addChild(hollowBox)

        
    }
    
    override func didChangeSize(_ oldSize: CGSize) {
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
        guard let touch = touches.first else { return }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self.view)
        
        withAnimation {
            lastTapped = location
        }
        print(lastTapped)
    }
    
    
    func fireBall() {
        if let ball = childNode(withName: "ball") {
            // Find difference between ball position and tap position then make a vector
            let difference = CGVector(dx: dampingFactor * (lastTapped.x - ball.position.x), dy: dampingFactor * (lastTapped.y - ball.position.y))
            ball.physicsBody?.applyImpulse(difference)
            
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        if let ball = childNode(withName: "ball"), let bin = childNode(withName: "bin") as? SKShapeNode {
            bin.position = lastTapped
            if bin.contains(ball.position) {
                fireBall()
            } else {
                bin.fillColor = .red
            }
        }
    }
    
}
