//
//  JourneyView.swift
//  chicken-nugget-app
//
//  Created by T Krobot on 16/8/25.
//

import SwiftUI


struct JourneyView: View {
    @State private var game = 0
    @State var isAnimating = false
    var pongType: String{
        if pongComplete{
            "PongLogoDone"
        }else{
            "PongLogo"
        }
    }
    var crossType: String{
        if pongComplete{
            
            if crossComplete{
                "CrossLogoDone"
            }else{
                "CrossLogo"
            }
        }else{
            "CrossLogoLocked"
        }
    }
    var escapeType: String{
        if crossComplete{
            "Escape"
        }else{
            "EscapeLocked"
        }
    }
    @State var pongComplete = false
    @State var crossComplete = false
    
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color.green
                    .ignoresSafeArea()
                VStack{
                    Text("\(game)")
                    ZStack{
                        Image("Farm")
                        
                        VStack{
                            NavigationLink {
                                if !crossComplete {
                                    
                                }else{
                                    EndingView()
                                    
                                }
                                
                            } label: {
                                Image(escapeType)
                                    .resizable()
                                    .scaledToFit()
                                
                                    .frame(width: 150, height: 150)
                            }
                            .offset(x: -100, y: 50)
                            
                            HStack{
                                
                                Image("Footsteps1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                Spacer()
                            }
                            .offset(x: 100, y: 0)
                            
                            NavigationLink {
                                if !pongComplete {
                                    
                                }else{
                                    SwiftUIView(
                                        
                                        crossComplete: $crossComplete)
                                    .ignoresSafeArea()
                                }
                                
                            } label: {
                                Image(crossType)
                                    .resizable()
                                    .scaledToFit()
                                
                                    .frame(width: 150, height: 150)
                            }
                            .offset(x: -50, y: 0)
                            
                            Image("Footsteps1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            
                            HStack{
                                Spacer()
                                NavigationLink {
                                    PongContentView(pongComplete: $pongComplete)
                                } label: {
                                    Image(pongType)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                }
                                .offset(x: -75, y: 0)
                            }
                        }
                    }
                    
                }
                .navigationTitle("The Journey")
            }
        }
    }
}




#Preview {
    JourneyView()
}
