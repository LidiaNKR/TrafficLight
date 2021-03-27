//
//  ButtonExample.swift
//  TrafficLight
//
//  Created by Лидия Ладанюк on 25.03.2021.
//

import SwiftUI

struct ButtonExample: View {
    
    @State private var nameButton = "START"
    
    var body: some View {
        Button(action: {
            nameButton = "NEXT"
            ContentView().changerColor()
                })
        {
            Text(nameButton)
                .font(.title)
        }
        .frame(width: 150, height: 50)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 3)
        )
    }
}

struct ButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExample()
    }
}
