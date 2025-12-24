//
//  LoginViewModel.swift
//  Instagram
//
//  Created by Khawla Zarrami on 24/12/2025.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
