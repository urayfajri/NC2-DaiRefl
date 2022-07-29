//
//  CustomPickerTextField.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 29/07/22.
//

import SwiftUI

struct CustomPickerTextField: View {
    @Binding var presentPicker: Bool
    @Binding var fieldString: String
    var placeholder: String
    @Binding var tag: Int
    var selectedTag: Int
    var body: some View {
        TextField(placeholder, text: $fieldString).disabled(true).textFieldStyle(RoundedBorderTextFieldStyle())
            .overlay(
                Button(action: {
                    tag = selectedTag
                    withAnimation {
                        presentPicker = true
                    }
                }) {
                    Rectangle().foregroundColor((Color.clear))
                }
            )
    }
}
