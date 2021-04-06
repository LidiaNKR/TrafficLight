//
//  CircleExample.swift
//  TrafficLight
//
//  Created by Лидия Ладанюк on 25.03.2021.
//

import SwiftUI

struct CircleExample: View {
    
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .opacity(opacity)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleExample(color: .red, opacity: 0.5)
    }
}
