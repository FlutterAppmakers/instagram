//
//  LoginView.swift
//  Instagram
//
//  Created by Khawla Zarrami on 26/11/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // logo image
                Image("instagram_logo_black")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 24)
                }
                
                Button {
                    print("Show forget password")
                } label: {
                    Text("Forgot Password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth:.infinity, alignment: .trailing)
                
                
                Button {
                    print("Log in")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .foregroundStyle(.white)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                if let windowSize = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                    
                    HStack {
                        Rectangle()
                            .frame(width: windowSize.screen.bounds.width/2 - 40, height: 0.5)
                        Text("OR")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        
                        Rectangle()
                            .frame(width: windowSize.screen.bounds.width/2 - 40, height: 0.5)
                    }
                    .foregroundStyle(.gray)
                    
                }
                
                HStack {
                   Image("facebook")
                        .resizable()
                        .frame(width:20, height: 20)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Sign up")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
