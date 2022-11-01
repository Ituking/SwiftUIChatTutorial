//
//  MessageViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/11/01.
//

import Foundation

struct MessageViewModel {
    let message: Message
    
    var currentUid: String {
        return AuthViewModel.shared.userSession?.uid ?? ""
    }
    
    var isFromCurrentUser: Bool {
        return message.fromId == currentUid
    }
    
    var profileImageUrl: URL? {
        guard let profileImageUrl = message.user?.profileImageUrl else {
            return nil
        }
        return URL(string: profileImageUrl)
    }
}
