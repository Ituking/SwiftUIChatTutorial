//
//  ChatViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import Firebase

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
        
        let currentUserRef = COLLECTION_MESSAGES.document(currentUid).collection(chatPartnerId).document()
        let chatPartnerRef = COLLECTION_MESSAGES.document(chatPartnerId).collection(currentUid)
        
        let messageId = currentUserRef.documentID
        
        let data: [String: Any] = ["text": messageText,
                                   "fromId": currentUid,
                                   "toId": chatPartnerId,
                                   "read": false,
                                   "timestamp": Timestamp(date: Date())
        ]
    }
}
