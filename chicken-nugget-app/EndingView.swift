//
//  SwiftUIView.swift
//  chicken-nugget-app
//
//  Created by T Krobot on 23/8/25.
//

import SwiftUI



struct EndingView: View {
    @State private var isAnimate = false
    @State private var Offset = 350
    @State private var scrollup = false
    @State private var Offset2 = 350
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
                .brightness(-0.5)
          
                
            VStack{
                Text("TESTTTTttttttt")
                    .offset(x:0, y:250)
                            
                HStack{
                  
                    VStack{
                        Image("Skyline")
                            .offset(x: CGFloat(Offset) + 275, y:10)
                        Rectangle()
                            .containerRelativeFrame(.vertical, count: 2, spacing: 2)
                            .foregroundColor(Color.green)
                            .offset(x: CGFloat(Offset) + 100, y:0)
                            .frame(width: 1050)
                        
                    }
                    VStack{
                        Image("Skyline")
                            .offset(x: CGFloat(Offset) - 150, y:10)
                        Rectangle()
                            .containerRelativeFrame(.vertical, count: 2, spacing: 2)
                            .foregroundColor(Color.green)
                            .offset(x: CGFloat(Offset), y:0)
                            .frame(width: 1000)
                    }
                 
                    }
                }
                    
                
                
                
            
            Image("chick")
                .offset(x: CGFloat(Offset) + 200, y:100)
            Text("The end")
                .scaleEffect(isAnimate ? 2 : 0)
                .animation(.bouncy,value: isAnimate)
         
            //chicken image
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    
                    for _ in 1...50 {
                        Offset -= 10
                    }
                    
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    isAnimate = true
                    
                }
                
                
            
        
                
                    
                }
            }
        }
    

    
}
#Preview {
    EndingView()
}
