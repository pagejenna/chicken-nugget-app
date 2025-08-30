//
//  chicken_nugget_appApp.swift
//  chicken-nugget-app
//
//  Created by jenna on 2/8/25.
//


//import SwiftUI
//
//@main
//struct papertossApp: App {
//    @State var gameState: GameState = .playing
//    @State var string: String? = ""
//    var body: some Scene {
//        WindowGroup {
//            Challenge2ContainerView(technology: "Graphics & Animations", state: $gameState, supplementalDescription: $string) {
//                ContentView(gameState: $gameState)
//            }
//            
//        }
//    }
//}





import SwiftUI

@main
struct chicken_nugget_appApp: App {
    var body: some Scene {
        WindowGroup {
            LoadingScreenView()
        }
    }
}
