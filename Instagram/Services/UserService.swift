//
//  UserService.swift
//  Instagram
//
//  Created by Khawla Zarrami on 07/01/2026.
//

import Foundation
import Firebase
import FirebaseFirestore

struct UserService {
    
    static func fetchAllUsers() async throws -> [User] {
      
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
    }
}
