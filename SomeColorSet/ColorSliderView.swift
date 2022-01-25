//
//  ColorSliderView.swift
//  SomeColorSet
//
//  Created by Ярослав Бойко on 26.11.2021.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            TextView(sliderValue: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
            
            TextFieldView(sliderValue: $sliderValue, textValue: $textValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorSliderView(sliderValue: .constant(100), color: .red)
        }
    }
}
