//
//  RegistrationViewModel.swift
//  Instagram
//
//  Created by Khawla Zarrami on 22/12/2025.
//

import Foundation
import Combine


class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
    
}
