//
//  IntroductionView.swift
//  chicken-nugget-app
//
//  Created by jenna on 2/8/25.
//

import SwiftUI

struct IntroductionView: View {
    private let startAnimationDuration = 12.0
    private let endAnimationDuration = 1.5
    @State private var animationStart = false
    @State private var animationEnd = false
    @State private var start = false
    @State private var scale = 0.5
    @State private var offset = 10.0
    var body: some View {
        
        VStack{
            if start{
                JourneyView()
            }else{
                
                ZStack{
                    Color.yellow
                        .ignoresSafeArea()
                    Text("Cluckster, a curious and determined chicken \nwho dreams of a life beyond the wire fences of the farm. Tired of the same old feed and clucking routine, Cluckster seizes a chaotic moment to make a run for it—narrowly escaping the grasp of surprised farmers and slipping through the gates to freedom. Now, out in the vast real world for the first time, Cluckster must navigate bustling cities while staying one step ahead of those who want to bring her back. Help Cluckster escape from the farmers!\n\n\n\n\n\n\n\n\n\n\n")
                        .rotation3DEffect(.degrees(40), axis: (x: 20, y: 0, z: 0))
                        .animation(Animation.linear(duration: animationEnd ? endAnimationDuration : startAnimationDuration))
                        .frame(width: 380, height: animationStart ? 500 : 0)
                        .onAppear() {
                            self.animationStart.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + self.startAnimationDuration) {
                                self.animationEnd.toggle()
                            }
                        }
                    
                    if animationEnd{
                        
                        Button {
                            start = true
                        } label: {
                            Label("Start!", systemImage: "play")
                        }
                        .offset(x:-5,y:60)
                        
                        
                        
                    }
                }
            }
        }
    }
}


#Preview {
    IntroductionView()
}
