//
//  CrossyRoadView.swift
//  chicken-nugget-app
//
//  Created by jenna on 16/8/25.
//

import SwiftUI
import UIKit

struct CrossyRoadView: View {
    @State var count = 0
    @State var chickenOffset = 300.0
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State var rectColorOne = Color.green
    @State var rectColorTwo = Color.red
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack{
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(Color.green)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .onReceive(timer) { _ in
                        if count % 2 == 0{
                            rectColorOne = Color.red
                        }
                        if count % 3 == 0{
                            rectColorOne = Color.green
                        }
                        if count % 5 == 0{
                            rectColorTwo = Color.red
                        }
                        else if count % 7 == 0{
                            rectColorTwo = Color.green
                        }
                        count += 1
                    }
                    .foregroundColor(rectColorOne)
                
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorTwo)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorOne)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorTwo)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorOne)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorTwo)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorOne)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColorTwo)
            }
            Text("🐓")
                .scaleEffect(2)
                .offset(y:chickenOffset)

        }
        .onTapGesture {
            chickenOffset -= 75
        }
    }
}



#Preview {
    CrossyRoadView()
}
