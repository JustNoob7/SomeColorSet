//
//  TextView.swift
//  SomeColorSet
//
//  Created by Ярослав Бойко on 26.11.2021.
//

import SwiftUI

struct TextView: View {
    
    let sliderValue: Double
    
    var body: some View {
        Text("\(lround(sliderValue))")
            .font(.title3)
            .bold()
            .foregroundColor(.white)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextView(sliderValue: 100)
        }
    }
}
