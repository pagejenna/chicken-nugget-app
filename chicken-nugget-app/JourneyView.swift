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
    @State var pongComplete = false
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
                        }
                    }
                    
                    
                    ScrollView {
                        
                        
                        
                        
                            
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
                .navigationTitle("        The Journey")
            }
        }
    }


#Preview {
    JourneyView()
}
