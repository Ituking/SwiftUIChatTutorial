//
//  AuthViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import Foundation

class AuthViewModel: NSObject, ObservableObject {
    
    func login() {
        print("Log in user from view model..")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        print("Email is \(email)")
        print("Password is \(password)")
        print("Fullname is \(fullname)")
        print("Username is \(username)")
    }
    
    func uploadProfileImage() {
        
    }
    
    func signout() {
        
    }
}
