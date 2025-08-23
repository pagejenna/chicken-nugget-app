//
//  CrossyRoadView.swift
//  chicken-nugget-app
//
//  Created by jenna on 16/8/25.
//

import SwiftUI
import UIKit

struct CrossyRoadView: View {
    @State var danger = false
    @State private var rectColor = Color.green
    private let colors: [Color] = [.red, .green]
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack{
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
                Rectangle()
                    .containerRelativeFrame(.vertical, count: 5, spacing: 110)
                    .foregroundColor(rectColor)
            }
            
            

        }
    }
}



#Preview {
    CrossyRoadView()
}
