//
//  Finalapp.swift
//  chicken-nugget-app
//
//  Created by T Krobot on 8/9/25.
//

import SwiftUI


struct Finalapp: View {
    @State private var timeElapsed: Int = 0
      // Create a timer publisher that fires every second
    
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        

         
              VStack {
                 
                  if timeElapsed < 12{
                      LoadingScreenView()
                  }else  {
                      IntroductionView()
                  }
                  
              }
              // Use onReceive to update the state variable when the timer fires
              .onReceive(timer) { _ in
                  timeElapsed += 1
                 
              }
        
       
        
        
        
        
        
        
        
    }
}

#Preview {
    Finalapp()
}
