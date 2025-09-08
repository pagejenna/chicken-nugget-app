//
//  ContentView.swift
//  papertoss
//
//  Created by Sean on 25/6/25.
//

import SwiftUI
import UIKit
import SpriteKit


enum GameState {
    case playing
    case start
    case win
    case lose
}


struct PongContentView: View {
    @State var scene: PongGameScene = PongGameScene()
    @State var gameState = GameState.start
    @State var elapsed = 0
    @Binding var pongComplete: Bool
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ZStack {
                    Text("you have lasted \(elapsed) seconds")
                        .foregroundStyle(Color.white)
                        .onReceive(timer) { _ in
                            if gameState == .playing{
                                elapsed += 1
                                if elapsed >= 30{
                                    gameState = .win
                                    pongComplete = true
                                }
                            }
                            else { elapsed = 0 }
                            
                        }
                    SpriteView(scene: scene, options: [.allowsTransparency])
                        .ignoresSafeArea()
                }
                
                HStack {
                    
                    Button("press to start!") {
                        scene.start()
                        gameState = .playing
                        
                    }
                    .disabled(gameState == .playing)
                    .onChange(of: scene.lose, {
                        print("yay")
                        if scene.lose{
                            gameState = .lose
                        }
                        
                        
                    })
                    .padding()
                    .buttonStyle(.borderedProminent)
                    if gameState == .win {
                        
                        Text("you won !!")
                            .foregroundStyle(Color.white)
                            .font(.largeTitle)
                            .phaseAnimator([0,1], content: { content, phase in
                                content.scaleEffect(phase) }, animation: { _ in
                                        .bouncy
                                })
                    }
                    if gameState == .lose {
                        Text("you lost !!")
                            .foregroundStyle(Color.white)
                            .font(.largeTitle)
                            .phaseAnimator([0,1], content: { content, phase in
                                content.scaleEffect(phase) }, animation: { _ in
                                        .bouncy
                                })
                        
                    }
                    
                }
            }
            .onAppear {
                scene.scaleMode = .aspectFit
            }
            
        }
    }
}





