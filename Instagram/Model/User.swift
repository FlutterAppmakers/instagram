//
//  User.swift
//  Instagram
//
//  Created by Khawla Zarrami on 04/12/2025.
//

import Foundation
import FirebaseAuth

struct User: Identifiable,Hashable, Codable {
    let id:String
    var username:String
    var profileImageUrl:String?
    var fullName:String?
    var bio:String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-2",fullName: "Bryuce Wayne",
              bio: "Gotham's Dark night.",email: "batman@gmail.com"),
              
            .init( id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom-2",fullName: "Eddie Brock",
                   bio: "venom",email: "venom@gmail.com"),
              
            .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "iron-man-1",fullName: "Tony Start",
                    bio: "Playboy & billionaire",email: "batman@gmail.com"),
              
            .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "black-panther-1",fullName: nil,
                    bio: "Wakanda forever",email: "blackpanther@gmail.com"),
              
            .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman",fullName: "Peter Parker",
                    bio: "Test bio",email: "spierman@gmail.com")
    ]
}
