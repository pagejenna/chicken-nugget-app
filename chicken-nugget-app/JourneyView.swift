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
    @State var pongType = "PongLogo"
    @State var crossType = "CrossLogoLocked"
    @State var escapeType = "EscapeLocked"
    @State var pongComplete = false
    @State var crossComplete = false
    var body: some View {
        
        
        NavigationStack{
            
            
            ZStack{
                Color.green
                    .ignoresSafeArea()
                
                VStack{
                    Text("\(game)")
                    Button("complete pong") {  pongComplete.toggle()
                        
                        if !pongComplete {
                            pongType = "PongLogo"
                        }else{
                            pongType = "PongLogoDone"
                            crossType = "CrossLogo"
                        }
                    }
                    Button("complete cross") {
                        if !pongComplete {
                            crossType = "CrossLogoLocked"
                        }else{
                            
                            if !crossComplete {
                                crossComplete.toggle()
                                crossType = "CrossLogoDone"
                                escapeType = "Escape"
                            }else{
                                crossComplete.toggle()
                                crossType = "CrossLogo"
                                escapeType = "EscapeLocked"
                            }
                        }
                    
                    }
                    
                    
                    
                    ScrollView {
                        ZStack{
                            
                            VStack{
                                Button {
                                    if !crossComplete {
                                        
                                    }else{
                                        game = 3
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
                                
                                Button {
                                    if !pongComplete {
                                        
                                    }else{
                                        game = 2
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
                                    Button {
                                        game = 1
                                        
                                        
                                    } label: {
                                        Image(pongType)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                    }
                                    
                                    
                                }
                                
                            }
                            
                        }
                            
                        }
                        
                        
                    }
                    
                }
                .navigationTitle("The Journey")
            }
        }
    }


#Preview {
    JourneyView()
}
