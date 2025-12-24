//
//  ContentView.swift
//  Instagram
//
//  Created by Khawla Zarrami on 26/11/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else {
               MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
