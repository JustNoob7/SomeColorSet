//
//  ColorView.swift
//  SomeColorSet
//
//  Created by Ярослав Бойко on 26.11.2021.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
            Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 4)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorView(red: 100, green: 140, blue: 180)
                .padding()
        }
    }
}
