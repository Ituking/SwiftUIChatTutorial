//
//  ChatViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messages = [Message]()
    
    init() {
        messages = mockMessages
    }
    
    var mockMessages: [Message] {
        [
            .init(isFromCurrentUser: true, messageText: "Hey guys! We have a gift for you."),
            .init(isFromCurrentUser: false, messageText: "No Music, No Life."),
            .init(isFromCurrentUser: true, messageText: "For once, Don't Do it."),
            .init(isFromCurrentUser: true, messageText: "I'm lovin' it."),
            .init(isFromCurrentUser: false, messageText: "Talk to you later!"),
            .init(isFromCurrentUser: true, messageText: "Just Do It."),
            .init(isFromCurrentUser: true, messageText: "Think Different.")
        ]
    }
    
    func sendMessage(_ messageText: String) {
        let message = Message(isFromCurrentUser: true, messageText: messageText)
        messages.append(message)
    }
}
