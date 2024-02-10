//
//  ButtonPrimary.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 10/02/24.
//

import SwiftUI

struct ButtonPrimary: View {
    
    let text: String
    let bgColor: Color
    let fontSize: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .frame(maxWidth: .infinity, maxHeight: 40)
                .fontWeight(.bold)
                .font(.system(size: fontSize))
                .background(bgColor)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
        .buttonStyle(ButtonPrimaryStyle())
    }
}

struct ButtonPrimaryStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.8 : 1)
    }
}
