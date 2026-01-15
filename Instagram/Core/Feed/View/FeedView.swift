//
//  FeedView.swift
//  Instagram
//
//  Created by Khawla Zarrami on 26/11/2025.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.posts) { post in
                        FeedCell(post: post)
                        
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram_logo_black")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 32)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    
                        Image(systemName: "paperplane")
                        .imageScale(.large)
                    
                }
            }
        }
        
    }
}

#Preview {
    FeedView()
}
