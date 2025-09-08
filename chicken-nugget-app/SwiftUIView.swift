//
//  SwiftUIView.swift
//  chicken-nugget-app
//
//  Created by T Krobot on 30/8/25.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var color: Color = .green
    @State private var unsafe1 = 0
    @State private var counter = 0
    @State private var color2: Color = .green
    @State private var unsafe2 = 0
    @State private var counter2 = 0
    @State private var color3: Color = .green
    @State private var counter3 = 0
    @State private var unsafe3 = 0
    @State private var color4: Color = .green
    @State private var counter4 = 0
    @State private var unsafe4 = 0
    @State private var color5: Color = .green
    @State private var counter5 = 0
    @State private var unsafe5 = 0
    @State private var chicenOffset = -70
    @State private var health = 15
    @State private var completed = 0
    
    // Timer ticks every 1 second
    let timer = Timer.publish(every: 0.35, on: .main, in: .common).autoconnect()
    let timer2 = Timer.publish(every: 0.35, on: .main, in: .common).autoconnect()
    let timer3 = Timer.publish(every: 0.35, on: .main, in: .common).autoconnect()
    let timer4 = Timer.publish(every: 0.35, on: .main, in: .common).autoconnect()
    let timer5 = Timer.publish(every: 0.35, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            
        
            VStack(spacing: 40) {
                
                Rectangle()
                    .fill(color)
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                Rectangle()
                    .fill(color2)
                    .containerRelativeFrame(
                        .vertical, count: 5, spacing: 110)
                Rectangle()
                    .fill(color3)
                    .containerRelativeFrame(
                        .vertical, count: 5, spacing: 110)
                Rectangle()
                    .fill(color4)
                    .containerRelativeFrame(
                        .vertical, count: 5, spacing: 110)
                Rectangle()
                    .fill(color5)
                    .containerRelativeFrame(
                        .vertical, count: 5, spacing: 110)
                
            }
            .padding()
            .onReceive(timer) { _ in
                counter += 1
                
                switch counter {
                case 1, 2, 3, 4:
                    color = .green
                    unsafe1 = 0
                case 5:
                    color = .yellow
                case 6:
                    color = .red
                    unsafe1 = 1
                    if unsafe1 == 1 && chicenOffset < -540 && chicenOffset > -630 {
                        
                        health -= 5
                        if health == 0{
                            chicenOffset = -70
                            health = 15
                        }
                    }
                    //-540,-630
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
                    unsafe2 = 0
                case 1:
                    color2 = .yellow
                case 2:
                    color2 = .red
                    unsafe2 = 1
                    if unsafe2 == 1 && chicenOffset < -430 && chicenOffset > -530 {
                        
                        health -= 5
                        if health == 0{
                            chicenOffset = -70
                            health = 15
                        }
                    }
                    //-430,-530
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
                    unsafe3 = 0
                case 2,3:
                    color3 = .yellow
                case 4:
                    color3 = .red
                    unsafe3 = 1
                    if unsafe3 == 1 && chicenOffset < -320 && chicenOffset > -420 {
                        
                        health -= 5
                        if health == 0{
                            chicenOffset = -70
                            health = 15
                        }
                    }
                    //-320,-420
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
                    unsafe4 = 0
                case 4:
                    color4 = .yellow
                case 5:
                    color4 = .red
                    unsafe4 = 1
                    if unsafe4 == 1 && chicenOffset < -210 && chicenOffset > -310 {
                        
                        health -= 5
                        if health == 0{
                            chicenOffset = -70
                            health = 15
                        }
                    }
                default:
                    counter4 = 0
                }
            }
            .padding()
            .onReceive(timer5) { _ in
                counter5 += 1
                
                switch counter5 {
                case 1,5,4,6:
                    color5 = .green
                    unsafe5 = 0
                    
                case 2:
                    color5 = .yellow
                    unsafe5 = 0
                    
                case 3:
                    color5 = .red
                    unsafe5 = 1
                    if unsafe5 == 1 && chicenOffset < -110 && chicenOffset > -200 {
                        
                        health -= 5
                        if health == 0{
                            chicenOffset = -70
                            health = 15
                        }
                    }
                default:
                    counter5 = 0
                }
            }
            if chicenOffset > -10{
                Image("MAJINSEANFINAL")
                    .resizable()
            }
            VStack{
                Text("\(chicenOffset)")
                //-660
                if chicenOffset < -650{
                   
                   Text("YOU WIN!")
                        .font(.largeTitle)
                        .phaseAnimator([0,1], content: { content, phase in
                            content.scaleEffect(phase)
                            
                        }, animation: { _ in
                                .bouncy
                        })
                        
                    
                }
                
            }
        }
        HStack{
            Button{
                if chicenOffset < -650{
                    completed = 1
                }
                if completed == 0{
                    chicenOffset -= 10
                }
                
               
                
                
                
                
                
            }label:{
                
                Text("up")
                
            }

            Spacer()
            Text("\(health)")
            
            Button{
                if chicenOffset < -650{
                    completed = 1
                }
                if completed == 0{
                    chicenOffset += 10
                }
                
            }label:{
                
                Text("down")
                
                
            }
            
        }
        Text("🐓")
            .offset(y:CGFloat(chicenOffset)
                    
                    
                    
                    
    )
            
    }
}




#Preview {
    SwiftUIView()
}
