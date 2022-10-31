//
//  ChatViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func sendMessage(_ messageText: String) {
        guard let currentUid = AuthViewModel.shared.userSession?.uid else {
            return
        }
        guard let chatPartnerId = user.id else {
            return
        }
    }
}
