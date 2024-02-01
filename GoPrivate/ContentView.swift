//
//  ContentView.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 31/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            Text("Go Private")
                .font(.system(size: 45, weight: .bold))
            VStack {
                Text("Selamat Datang")
                    .font(.system(size: 18, weight: .semibold))
                Text("Login ke akun anda")
                    .font(.system(size: 14, weight: .regular))
            }
            VStack {
                Section {
                    HStack {
                        Image(systemName: "email")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                        TextField("Email", text: $email)
                    }
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
