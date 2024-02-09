//
//  CommonPickerField.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 06/02/24.
//

import SwiftUI

struct PickerFieldComponent: View {
    let scope = ["SD", "SMP", "SMA", "Kuliah"]
    @State private var selection: String = "Jenjang"
    var body: some View {
        HStack {
            Image("academic")
                .resizable()
                .frame(width: 30, height: 30)
            Picker("Select", selection: $selection) {
                ForEach (scope, id: \.self) {
                    Text($0)
                        .fontWeight(.regular)
                }
            }
            Spacer()
            Image("arrowBottom")
        }
        .padding()
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.black.opacity(0.15), lineWidth: 1.5)
        )
    }
}
