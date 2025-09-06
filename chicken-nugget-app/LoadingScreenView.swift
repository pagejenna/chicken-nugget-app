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
    @State private var Eggwitdth = 400
    @State private var Eggheight = 100
    @State private var Eggtype = "egg"
    
    
    var body: some View {
        ZStack{
            Color.blue
                .brightness(+0.25)
                .ignoresSafeArea()
            VStack {
                
                Image(Eggtype)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.tint)
                
                    .frame(width: CGFloat(Eggwitdth), height: CGFloat(Eggheight))
                    //.offset(y: isRising ? 0 : 50) //
                    .scaleEffect(isRising ? 2 : 0)
                    .animation(.bouncy,value: isRising)
                    .offset(x: isRising ? -10 : 10)
                    .animation(.default.repeatCount(5, autoreverses: true), value: isRising)
                    //.animation(.bouncy(duration: 0.5), value: isRising)
                    //.opacity(isRising ? 1 : 0)
                
                Text("Presented by")
                    .scaleEffect(isAnimating ? 2 : 0)
                    .animation(.bouncy,value: isAnimating)
                Text("chicen nuget studios")
                    .scaleEffect(isAnimating ? 2 : 0)
                    .animation(.bouncy,value: isAnimating)
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            isRising = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation {
                                Eggtype = "eggcrack"
                                Eggheight = 400
                                Eggwitdth = 100


                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                Eggtype = "hatch"
                                Eggheight = 400
                                Eggwitdth = 200


                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                isAnimating = true
                            }
                        }
                    }
                }
            }
                    .padding()
                }
            }
        }
        
        #Preview {
            LoadingScreenView()
        }
    
