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
        NavigationStack {
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
                    TextFieldComponent(text: $email, placeholder: "Email", icon: "email", isPassword: false)
                    TextFieldComponent(text: $password, placeholder: "Password", icon: "password", isPassword: true)
                        .padding(.top, 17)
                }
                .padding(.top, 49)
                Spacer()
                ButtonPrimary(text: "Login", bgColor: Color.Default.greenPrimaryGo, fontSize: 16, action: {})
                Spacer()
                HStack {
                    Text("Tidak punya akun?")
                        .fontWeight(.regular)
                    NavigationLink {
                        BoardingView()
                    } label: {
                        Text("Buat Akun Baru")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.Default.yellowGo)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 25)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
