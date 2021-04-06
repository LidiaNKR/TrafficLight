//
//  ContentView.swift
//  TrafficLight
//
//  Created by Лидия Ладанюк on 25.03.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var nameButton = "START"
    @State private var currentLight = CurrentLight.red
    
    func changerColor() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}
    
extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                CircleExample(color: .red,
                              opacity: currentLight == .red ? 1 : 0.3)
                CircleExample(color: .yellow,
                              opacity: currentLight == .yellow ? 1 : 0.3)
                CircleExample(color: .green,
                              opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                ButtonExample(title: nameButton) {
                    if nameButton == "START" {
                        nameButton = "NEXT"
                    }
                    changerColor()
                }
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
