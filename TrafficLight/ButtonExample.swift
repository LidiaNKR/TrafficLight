//
//  ButtonExample.swift
//  TrafficLight
//
//  Created by Лидия Ладанюк on 25.03.2021.
//

import SwiftUI

struct ButtonExample: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 150, height: 50)
        .background(Color.blue)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(Color.white, lineWidth: 3)
        )
    }
}

struct ButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExample(title: "START", action: {})
    }
}
