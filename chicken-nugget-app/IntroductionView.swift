//
//  IntroductionView.swift
//  chicken-nugget-app
//
//  Created by jenna on 2/8/25.
//

import SwiftUI

struct IntroductionView: View {
    @State private var scale = 0.5
    var body: some View {
        HStack{
            Spacer()
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.yellow)
                Text("Cluckster, a curious and determined chicken who dreams of a life beyond the wire fences of the farm. Tired of the same old feed and clucking routine, Cluckster seizes a chaotic moment to make a run for it—narrowly escaping the grasp of surprised farmers and slipping through the gates to freedom. Now, out in the vast real world for the first time, Cluckster must navigate bustling cities while staying one step ahead of those who want to bring her back. Help Cluckster escape from the farmers!")
                    .rotation3DEffect(.degrees(50), axis: (x: 1, y: 0, z: 0))
            
            }
            
                
                
            Spacer()
            Spacer()
        }
        
    }
}

#Preview {
    IntroductionView()
}
