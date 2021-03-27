//
//  ContentView.swift
//  TrafficLight
//
//  Created by Лидия Ладанюк on 25.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var redLight = CircleExample(
        color: .red,
        opacity: 0.5)
    @State var yellowLight = CircleExample(
        color: .yellow,
        opacity: 0.5)
    @State var greenLight = CircleExample(
        color: .green,
        opacity: 0.5)
    
    @State private var nameButton = "START"
    @State var currentLight = CurrentLight.red
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    func changerColor() {
        switch currentLight {
        case .red:
            greenLight.opacity = 0.5
            redLight.opacity = 1
            currentLight = .yellow
        case .yellow:
            redLight.opacity = 0.5
            yellowLight.opacity = 1
            currentLight = .green
        case .green:
            greenLight.opacity = 1
            yellowLight.opacity = 0.5
            currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                redLight
                yellowLight
                greenLight
                Spacer()
                Button(action: {
                    nameButton = "NEXT"
                    changerColor()
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
                        .stroke(Color.white, lineWidth: 3))
                .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
