//
//  TextFieldView.swift
//  SomeColorSet
//
//  Created by Ярослав Бойко on 26.11.2021.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var sliderValue: Double
    @Binding var textValue: String
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue)
            .frame(width: 45)
            .textFieldStyle(.roundedBorder)
            .onSubmit {
                guard let doubleValue = Double(textValue), (0...255).contains(doubleValue) else {
                    showAlert.toggle()
                    textValue = "0"
                    sliderValue = 0
                    return
                }
                sliderValue = doubleValue
            }
            .alert("Warning!", isPresented: $showAlert, actions: {}) {
                Text("Enter a value from 0 to 255.")
            }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(sliderValue: .constant(20), textValue: .constant("20"))
    }
}
