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
    @Binding var gameState: GameState
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ZStack {
                    SpriteView(scene: scene, options: [.allowsTransparency])
                        .ignoresSafeArea()
                    Circle()
                        .frame(width:5, height: 5)
                        .foregroundStyle(.blue)
                        .position(scene.lastTapped)
                }
                
                HStack {
                    Button("Launch Ball") {
                        scene.fireBall()
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                }
            }
            .onAppear {
                scene.scaleMode = .aspectFit
            }
            
        }
    }
}
