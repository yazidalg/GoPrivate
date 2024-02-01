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
                HStack {
                    Image("email")
                        .resizable()
                        .frame(width: 25, height: 21)
                    TextField("Email", text: $email)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black.opacity(0.25))
                }
                .padding()
                .foregroundColor(Color.Default.bluePrimaryGo)
                .background(Color.black.opacity(0.04))
                .cornerRadius(12)
                
                HStack {
                    Image("password")
                        .resizable()
                        .frame(width: 20, height: 25)
                    TextField("Password", text: $password)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black.opacity(0.25))
                }
                .padding()
                .foregroundColor(Color.Default.bluePrimaryGo)
                .background(Color.black.opacity(0.04))
                .cornerRadius(12)
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
