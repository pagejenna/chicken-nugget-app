//
//  SwiftUIView.swift
//  chicken-nugget-app
//
//  Created by T Krobot on 30/8/25.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var color: Color = .green
    @State private var counter = 0
    @State private var color2: Color = .green
    @State private var counter2 = 0
    @State private var color3: Color = .green
    @State private var counter3 = 0
    @State private var color4: Color = .green
    @State private var counter4 = 0
    
    // Timer ticks every 1 second
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let timer3 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let timer4 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 12) {
            
                Rectangle()
                    .fill(color)
                    .frame(height: 80)
                    .cornerRadius(12)
                    .shadow(radius: 4)
            Rectangle()
                .fill(color2)
                .frame(height: 80)
                .cornerRadius(12)
                .shadow(radius: 4)
            Rectangle()
                .fill(color3)
                .frame(height: 80)
                .cornerRadius(12)
                .shadow(radius: 4)
            Rectangle()
                .fill(color4)
                .frame(height: 80)
                .cornerRadius(12)
                .shadow(radius: 4)
            
        }
        .padding()
        .onReceive(timer) { _ in
            counter += 1
            
            switch counter {
            case 1, 2, 3, 4:
                color = .green
            case 5:
                color = .yellow
            case 6:
                color = .red
            default:
                counter = 0
            }
            
        }
        .padding()
        .onReceive(timer) { _ in
            counter2 += 1
            
            switch counter2 {
            case  3, 4, 5, 6:
                color2 = .green
            case 1:
                color2 = .yellow
            case 2:
                color2 = .red
            default:
                counter2 = 0
            }
        }
        .padding()
        .onReceive(timer3) { _ in
            counter3 += 1
            
            switch counter3 {
            case 1, 5, 6:
                color3 = .green
            case 2,3:
                color3 = .yellow
            case 4:
                color3 = .red
            default:
                counter3 = 0
            }
       }
        .padding()
        .onReceive(timer4) { _ in
            counter4 += 1
            
            switch counter4 {
            case 1,2,3,6:
                color4 = .green
            case 4:
                color4 = .yellow
            case 5:
                color4 = .red
            default:
                counter4 = 0
            }
       }
    }
    
    
}



#Preview {
    SwiftUIView()
}
