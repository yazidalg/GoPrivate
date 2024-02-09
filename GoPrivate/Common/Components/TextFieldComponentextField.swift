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
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .frame(width: 30, height: 30)
            TextField(placeholder, text: $text)
                .fontWeight(.regular)
                .foregroundColor(Color.black.opacity(0.25))
        }
        .padding()
        .foregroundColor(Color.Default.bluePrimaryGo)
        .background(Color.black.opacity(0.04))
        .cornerRadius(12)
    }
}
