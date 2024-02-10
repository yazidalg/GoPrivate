//
//  SignUpView.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 03/02/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var selection = ""
    @Binding var role: String
    let scope = ["SMA", "SMP", "SMK"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Go Private")
                    .font(.system(size: 45))
                    .bold()
                Spacer()
                VStack {
                    Text("Nikmati akun baru sebagai \(role)")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                    Text("Nikmati beragam fitur GoPrivate")
                        .fontWeight(.regular)
                }
                Spacer()
                VStack {
                    TextFieldComponent(text: $username, placeholder: "Nama Lengkap", icon: "person", isPassword: false)
                        .padding(.bottom, 10)
                    TextFieldComponent(text: $email, placeholder: "Email", icon: "email", isPassword: false)
                        .padding(.bottom, 10)
                    TextFieldComponent(text: $phoneNumber, placeholder: "Nomor Telepon", icon: "phone", isPassword: false)
                        .padding(.bottom, 10)
                    PickerFieldComponent()
                        .padding(.bottom, 10)
                    TextFieldComponent(text: $password, placeholder: "Password", icon: "password", isPassword: true)
                        .padding(.bottom, 10)
                    TextFieldComponent(text: $confirmPassword, placeholder: "Konfirmasi Password", icon: "password", isPassword: true)
                        .padding(.bottom, 10)
                }
                Spacer()
                ButtonPrimary(text: "Register", bgColor: Color.Default.greenPrimaryGo, fontSize: 16, action: {})
                Spacer()
                HStack {
                    Text("Sudah punya akun?")
                        .fontWeight(.regular)
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Login")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.Default.yellowGo)
                    }
                }
            }
            .padding(.horizontal, 25)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(role: .constant("Guru"))
    }
}
