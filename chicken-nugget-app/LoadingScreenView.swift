//
//  ContentView.swift
//  chicken-nugget-app
//
//  Created by jenna on 2/8/25.
//

import SwiftUI

struct LoadingScreenView: View {
    @State var isAnimating = false
    @State private var isRising = false
    @State private var isRIZZLER = false
    
    var body: some View {
        ZStack{
            Color.yellow
                        .ignoresSafeArea()
            VStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    
                                    .frame(width: 200, height: 5)
                                    .offset(y: isRising ? 0 : 50) //
                                    .animation(.easeOut(duration: 0.5), value: isRising)
                                    .opacity(isRising ? 1 : 0)
                                   
                Text("Presented by")
                    .scaleEffect(isAnimating ? 2 : 0)
                    .animation(.bouncy,value: isAnimating)
                Text("chicen nuget studios")
                    .scaleEffect(isAnimating ? 2 : 0)
                    .animation(.bouncy,value: isAnimating)
                Button("Start") {
                    isAnimating.toggle()
                    isRising.toggle()
                }
            }
            .padding()
        }
    }
}

#Preview {
    LoadingScreenView()
}
