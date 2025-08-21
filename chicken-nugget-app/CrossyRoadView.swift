//
//  CrossyRoadView.swift
//  chicken-nugget-app
//
//  Created by jenna on 16/8/25.
//

import SwiftUI
import UIKit

struct CrossyRoadView: View {
    @State private var speed = 5.0;
    @State private var isCollide = false;
    @State private var isAnimating = true;
    var body: some View {
       
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack{
                Spacer()
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 7, spacing: 40)
                        .foregroundColor(.white)
                    Text("escape till here")
                        .foregroundColor(.black)
                }
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                        .foregroundColor(.white)
                    Text("---           ---            ---           ---          ---")
                        .foregroundColor(.black)
                    //to add rect frame to detect collision and add animation to move the car
                    Text("🚗")
                        .offset(x: isAnimating ? 50 : 0)
                        //.animation(.easeInOut(duration: 5), value: true)
                
                   
                    Text("🚕")
                    
                }
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                        .foregroundColor(.white)
                    Text("safe zone")
                        .foregroundColor(.black)
                }
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                        .foregroundColor(.white)
                    Text("---           ---            ---           ---          ---")
                        .foregroundColor(.black)
                    Text("🚗")
                    Text("🚕")
                }
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                        .foregroundColor(.white)
                    Text("safe zone")
                        .foregroundColor(.black)
                }
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                        .foregroundColor(.white)
                    Text("---           ---            ---           ---          ---")
                        .foregroundColor(.black)
                    Text("🚗")
                    Text("🚕")
                }
                ZStack{
                    Rectangle()
                        .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                        .foregroundColor(.white)
                    Text("safe zone")
                        .foregroundColor(.black)
                }
                
                Spacer()
                Spacer()
                
                   
            }
        }
 
    }
}

#Preview {
    CrossyRoadView()
}
