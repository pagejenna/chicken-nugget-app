//
//  ContentView.swift
//  papertoss
//
//  Created by Sean on 25/6/25.
//

import SwiftUI
import UIKit
import SpriteKit



struct PongContentView: View {
    @State var scene: PongGameScene = PongGameScene()
    @State var isDisabled = false
    @State var count = 0
    @Binding var gameState: GameState
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ZStack {
                    SpriteView(scene: scene, options: [.allowsTransparency])
                        .ignoresSafeArea()
                }
                HStack {
                    
                    Button("press to start!") {
                        scene.start()
                        isDisabled = true
                        count = 1
                    }
                    .disabled(isDisabled)
                    .onChange(of: scene.lose, {
                        if isDisabled{
                            count = 0
                            isDisabled = scene.lose
                            count = 2
                        }
                        
                    })
                    .padding()
                    .buttonStyle(.borderedProminent)
                    if !isDisabled && count == 2{
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





