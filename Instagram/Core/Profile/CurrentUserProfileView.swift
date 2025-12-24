//
//  CurrentUserProfileView.swift
//  Instagram
//
//  Created by Khawla Zarrami on 04/12/2025.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    let gridItems: [GridItem] = [
        .init( .flexible(), spacing: 1),
        .init( .flexible(), spacing: 1),
        .init( .flexible(), spacing: 1)
    ]
    
    var posts: [Post]  {
        return Post.MOCK_POSTS.filter({$0.user?.username ==  user.username})
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                
              ProfileHeaderView(user: user)
                
                // post grid view
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
   }
}


#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
