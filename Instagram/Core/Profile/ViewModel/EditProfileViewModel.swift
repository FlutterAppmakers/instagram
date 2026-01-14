//
//  EditProfileViewModel.swift
//  Instagram
//
//  Created by Khawla Zarrami on 09/01/2026.
//

import PhotosUI
import SwiftUI
import Combine
import FirebaseFirestore

@MainActor
class EditProfileViewModel: ObservableObject {
    
    @Published var user: User?
    
    @Published var selectedImage: PhotosPickerItem? {
            didSet {
                Task {
                    await loadImage(fromItem: selectedImage)
                }
            }
        }
    
    @Published var profileImage: Image?
    
    @Published var fullname = ""
    @Published var bio = ""
    
    private var uiImage: UIImage?
    
    init(user: User) {
        self.user = user
        
        if let fullName = user.fullName {
            self.fullname = fullName
        }
        
        if let bio = user.bio {
            self.bio = bio
        }
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else { return }
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.uiImage = uiImage
        self.profileImage = Image(uiImage: uiImage)
    }
    
    func updateUserData() async throws {
        
        var data = [String: Any]()
        // update profile image if changed
        
        if let uiImage = uiImage {
            let imageUrl = try? await ImageUploader.uploadImage(image: uiImage)
            data["profileImageUrl"] = imageUrl
            
        }
        
        //update name if changed
        
        if !fullname.isEmpty && user?.fullName != fullname {
            print("DEBUG Update fullname \(fullname)")
            data["fullname"] = fullname
        }
        
        //update bio if changed
        
        if !bio.isEmpty && user?.bio != bio {
            print("DEBUG Update bio \(bio)")
            data["bio"] = bio
        }
        
        if !data.isEmpty && user != nil {
            try await Firestore.firestore().collection("users").document(user!.id).updateData(data)
        }
        
    }
}
