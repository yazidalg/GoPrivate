//
//  RegisterViewModel.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 11/02/24.
//

import Foundation
import Firebase

class RegisterViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var phoneNumber: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var errorMessage: String = ""
    let scope = ["SMA", "SMP", "SMK"]
    
    func signUpUser() {
        if validateForm() {
            Auth.auth().createUser(withEmail: email, password: password) {
                [weak self] authResult, error in guard let self = self else { return }
                if let error = error {
                    self.errorMessage = error.localizedDescription
                } else {
                    
                }
            }
        }
    }
    
    func validateForm() -> Bool {
        if username.isEmpty || username.count < 5 || email.isEmpty || email.count < 5 || !email.contains("@") || password.isEmpty ||
            password.count < 5 || phoneNumber.isEmpty || confirmPassword.isEmpty || confirmPassword != password
        {
            return false
        }
        return true
    }
}
