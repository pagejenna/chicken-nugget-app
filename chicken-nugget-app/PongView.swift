//
//  PongView.swift
//  chicken-nugget-app
//
//  Created by jenna on 23/8/25.
//

import SwiftUI

struct PongView: View {
    var body: some View {
        Rectangle()
            .size(width: 150, height: 35)
            .frame(width: 150, height: 35)
            .offset(y:100)
            
    }
}

#Preview {
    PongView()
}
