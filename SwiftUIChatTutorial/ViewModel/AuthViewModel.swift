//
//  AuthViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import Firebase

class AuthViewModel: NSObject, ObservableObject {
    
    func login() {
        print("Log in user from view model..")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            let data: [String: Any] = [
                "email": email,
                "username": username,
                "fullname": fullname,
                "uid": user.uid
            ]
        }
    }
    
    func uploadProfileImage() {
        
    }
    
    func signout() {
        
    }
}
