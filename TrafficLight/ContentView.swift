//
//  ContentView.swift
//  TrafficLight
//
//  Created by Лидия Ладанюк on 25.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleExample(color: .red)
                CircleExample(color: .yellow)
                CircleExample(color: .green)
                Spacer()
                ButtonExample()
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
