//
//  LoginView.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 01/02/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Go Private")
                .font(.system(size: 45))
                .fontWeight(.bold)
            Spacer()
            VStack {
                Text("Selamat Datang")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                Text("Login ke akun anda")
                    .font(.system(size: 14))
                    .fontWeight(.regular)
            }
            VStack {
                TextFieldComponent(text: $email, placeholder: "Email", icon: "email")
                TextFieldComponent(text: $password, placeholder: "Password", icon: "password")
                    .padding(.top, 17)
            }
            .padding(.top, 49)
            Spacer()
            Button {
                
            } label: {
                Text("Login")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(Color.Default.greenPrimaryGo)
                    .cornerRadius(12)
            }
            Spacer()
            HStack {
                Text("Tidak punya akun?")
                    .fontWeight(.regular)
                Text("Buat Akun Baru")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.Default.yellowGo)
                    .onTapGesture {
                        // Do Some Action
                    }
            }
            Spacer()
        }
        .padding(.horizontal, 25)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}