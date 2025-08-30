////
////  ContentView.swift
////  papertoss
////
////  Created by Sean on 25/6/25.
////
//
//import SwiftUI
//import UIKit
//import SpriteKit
//
//
//
//struct ContentView: View {
//    @State var scene: GameScene = GameScene()
//    @Binding var gameState: GameState
//    @State var secondsLeft = 300
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//    var body: some View {
//        ZStack {
//            Color.black
//                .ignoresSafeArea()
//            VStack {
//                ZStack {
//                    SpriteView(scene: scene, options: [.allowsTransparency])
//                        .ignoresSafeArea()
//                    Circle()
//                        .frame(width:5, height: 5)
//                        .foregroundStyle(.blue)
//                        .position(scene.lastTapped)
//                }
//                HStack {
//                    Group {
//                        Label(formatTime(), systemImage: "clock")
//                            .foregroundStyle(.white)
//                            .contentTransition(.numericText())
//                        let truncatedDamping = String(format: "%.2f", scene.dampingFactor)
//                        Text("Power: \(truncatedDamping)")
//                            .foregroundStyle(.white)
//                    }
//                    
//                    .padding(.leading)
//                    Slider(value: $scene.dampingFactor, in: 0.01...0.2, step: 0.01)
//                        .padding(.horizontal)
//                    Button("Launch Ball") {
//                        scene.fireBall()
//                    }
//                    .padding()
//                    .buttonStyle(.borderedProminent)
//                }
//            }
//            .onAppear {
//                scene.scaleMode = .aspectFit
//            }
//            .onChange(of: scene.taskCompleted) { oldValue, newValue in
//                if newValue {
//                    Task.detached {
//                        try! await Task.sleep(for: .seconds(1))
//                        await MainActor.run {
//                            self.gameState = .success
//                        }
//                    }
//                }
//            }
//            .onReceive(timer) { input in
//                withAnimation {
//                    secondsLeft -= 1
//                }
//                if secondsLeft == 0 && gameState != .success {
//                    gameState = .failure
//                }
//            }
//        }
//    }
//    func formatTime() -> String {
//        let minutes = secondsLeft / 60
//        let seconds = secondsLeft % 60
//        if seconds < 10 {
//            return "\(minutes):0\(seconds)"
//        } else {
//            return "\(minutes):\(seconds)"
//        }
//        
//    }
//}
