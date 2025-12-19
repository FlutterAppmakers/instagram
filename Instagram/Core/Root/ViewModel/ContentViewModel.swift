//
//  ContentViewModel.swift
//  Instagram
//
//  Created by Khawla Zarrami on 19/12/2025.
//

import Foundation
import FirebaseAuth
import Combine


class ContentViewModel: ObservableObject {
    private let  service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { userSession in
            self.userSession = userSession
        }
        .store(in: &cancellables)
    }
    
}
