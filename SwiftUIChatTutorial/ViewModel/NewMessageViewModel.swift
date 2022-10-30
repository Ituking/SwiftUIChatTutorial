//
//  NewMessageViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/30.
//

import SwiftUI
import Firebase

class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        Firestore.firestore().collection("users")
    }
}
