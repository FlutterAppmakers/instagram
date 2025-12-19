//
//  CreateUserNameView.swift
//  Instagram
//
//  Created by Khawla Zarrami on 02/12/2025.
//

import SwiftUI

struct CreateUserNameView: View {
    @State private var username: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing:12) {
            Text("Create username")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            Text("Pick a username for your new account, you can always change it later.")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("username", text: $username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
               CreatePasswordView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()

            
            
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreateUserNameView()
}
