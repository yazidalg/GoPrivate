//
//  BoardingView.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 01/02/24.
//

import SwiftUI

struct BoardingView: View {
    
    @State private var role: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Go Private")
                    .font(.system(size: 45, weight: .bold))
                Spacer()
                VStack {
                    Text("Buat akun sebagai?")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                    Text("Nikmati beragam fitur GoPrivate")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                }
                Spacer()
                VStack {
                    NavigationLink {
                        SignUpView(role: .constant("Guru"))
                    } label: {
                        HStack {
                            Spacer()
                            Image("iconTeacher")
                            Spacer()
                            Text("Guru")
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .background(Color.Default.bluePrimaryGo)
                        .cornerRadius(10)
                        .padding(.horizontal, 25)
                    }
                    .padding(.bottom, 5)
                    NavigationLink {
                        SignUpView(role: .constant("Murid"))
                    } label: {
                        HStack {
                            Spacer()
                            Image("iconStudent")
                            Spacer()
                            Text("Murid")
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .background(Color.Default.greenPrimaryGo)
                        .cornerRadius(10)
                        .padding(.horizontal, 25)
                    }
                    .padding(.top, 5)
                }
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
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct BoardingView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingView()
    }
}
