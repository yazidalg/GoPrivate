//
//  RegisterViewModel.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 11/02/24.
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var phoneNumber: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var selection = ""
    let scope = ["SMA", "SMP", "SMK"]
}
