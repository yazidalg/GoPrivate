//
//  CommonTextField.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 03/02/24.
//

import SwiftUI

struct TextFieldComponent: View {
    
    @Binding var text: String
    let placeholder: String
    let icon: String
    let isPassword: Bool
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .frame(width: 30, height: 30)
            switch isPassword {
            case false:
                TextField(placeholder, text: $text)
                    .fontWeight(.regular)
            case true:
                SecureField(placeholder, text: $text)
                    .fontWeight(.regular)
            }
        }
        .padding()
        .foregroundColor(.black)
        .background(Color.black.opacity(0.04))
        .cornerRadius(12)
    }
}
