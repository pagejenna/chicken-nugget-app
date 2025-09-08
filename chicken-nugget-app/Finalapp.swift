//
//  Finalapp.swift
//  chicken-nugget-app
//
//  Created by T Krobot on 8/9/25.
//

import SwiftUI


struct Finalapp: View {
    @State private var timeElapsed: Int = 0
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
              VStack {
                  if timeElapsed < 12{
                      LoadingScreenView()
                  }else  {
                      IntroductionView()
                  }
              }
              .onReceive(timer) { _ in
                  timeElapsed += 1
                 
              }
    }
}

#Preview {
    Finalapp()
}
