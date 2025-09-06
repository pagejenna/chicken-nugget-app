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
    @State private var isDisabled = false
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
                    Button("Start!") {
                        scene.restart()
                        isDisabled = true
                    }
                    .disabled(isDisabled)
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
