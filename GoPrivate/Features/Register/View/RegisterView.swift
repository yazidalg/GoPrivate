//
//  SignUpView.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 03/02/24.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    @ObservedObject var boardingViewModel = BoardingViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Go Private")
                    .font(.system(size: 45))
                    .bold()
                Spacer()
                VStack {
                    Text("Nikmati akun baru sebagai \(boardingViewModel.role)")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                    Text("Nikmati beragam fitur GoPrivate")
                        .fontWeight(.regular)
                }
                Spacer()
                Form {
                    VStack {
                        TextFieldComponent(text: $viewModel.username, placeholder: "Nama Lengkap", icon: "person", isPassword: false)
                            .padding(.bottom, 10)
                            .textInputAutocapitalization(.words)
                        TextFieldComponent(text: $viewModel.email, placeholder: "Email", icon: "email", isPassword: false)
                            .textInputAutocapitalization(.never)
                            .padding(.bottom, 10)
                        TextFieldComponent(text: $viewModel.phoneNumber, placeholder: "Nomor Telepon", icon: "phone", isPassword: false)
                            .padding(.bottom, 10)
                        PickerFieldComponent()
                            .padding(.bottom, 10)
                        TextFieldComponent(text: $viewModel.password, placeholder: "Password", icon: "password", isPassword: true)
                            .padding(.bottom, 10)
                        TextFieldComponent(text: $viewModel.confirmPassword, placeholder: "Konfirmasi Password", icon: "password", isPassword: true)
                            .padding(.bottom, 10)
                    }
                }
                .formStyle(ColumnsFormStyle())
                Spacer()
                ButtonPrimary(text: "Register", bgColor: Color.Default.greenPrimaryGo, fontSize: 16, action: {
                    viewModel.signUpUser()
                })
//                .disabled(viewModel.validateForm())
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
        SignUpView()
    }
}
