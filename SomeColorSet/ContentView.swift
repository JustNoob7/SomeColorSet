//
//  ContentView.swift
//  SomeColorSet
//
//  Created by Ярослав Бойко on 26.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
        
    var body: some View {
        ZStack {
            Color(white: 0.1)
                .ignoresSafeArea()
            VStack(spacing: 75) {
                ColorView(red: redValue, green: greenValue, blue: blueValue)
                VStack(spacing: 20) {
                    ColorSliderView(sliderValue: $redValue, color: .red)
                    ColorSliderView(sliderValue: $greenValue, color: .green)
                    ColorSliderView(sliderValue: $blueValue, color: .blue)
                }

            }
            .padding(EdgeInsets(top: -250, leading: 16, bottom: 0, trailing: 16))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
