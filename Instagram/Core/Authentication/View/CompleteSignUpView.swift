//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by Khawla Zarrami on 02/12/2025.
//

import SwiftUI

struct CompleteSignUpView: View {
    @State private var email: String = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Text("Welcome to Instagram,  \(viewModel.username)")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click Below to complete registration and start using Instagram ")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
        
            
            Button {
                Task {
                    try await viewModel.createUser()
                }
            } label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)

            
            Spacer()

                
        }.toolbar {
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
    CompleteSignUpView()
}
