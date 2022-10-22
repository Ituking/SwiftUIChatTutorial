//
//  Message.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}
