//
//  CrossyRoadView.swift
//  chicken-nugget-app
//
//  Created by jenna on 16/8/25.
//

import SwiftUI

struct CrossyRoadView: View {
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
                    Text("--        --        --        --        --        --        --")
                        .foregroundColor(.black)
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
                    Text("--        --        --        --        --        --        --")
                        .foregroundColor(.black)
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
                    Text("--        --        --        --        --        --        --")
                        .foregroundColor(.black)
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
