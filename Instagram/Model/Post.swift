//
//  Post.swift
//  Instagram
//
//  Created by Khawla Zarrami on 04/12/2025.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
    
}
extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 123,
              imageUrl: "batman-2",
              timestamp: Timestamp(),
              user:User.MOCK_USERS[0]
             ),
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Wakanda Forever",
              likes: 104,
              imageUrl: "black-panther-1",
              timestamp: Timestamp(),
              user:User.MOCK_USERS[3]
             ),
        
            .init(
                id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Iron Man",
                  likes: 12,
                  imageUrl: "iron-man-1",
                  timestamp: Timestamp(),
                  user:User.MOCK_USERS[2]
                 ),
        
            
            .init(
                id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "Venom is hungry, time to eat",
                  likes: 314,
                  imageUrl: "venom-10",
                  timestamp: Timestamp(),
                  user:User.MOCK_USERS[1]
                 ),
        
            .init(
                id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "This is some test caption for now",
                  likes: 76,
                  imageUrl: "venom-2",
                  timestamp: Timestamp(),
                  user:User.MOCK_USERS[1]
                 ),
    ]
}
