//
//  Message.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/22.
//

import FirebaseFirestoreSwift
import Firebase

struct Message: Identifiable, Decodable {
    @DocumentID var id: String?
    let fromId: String
    let told: String
    let read: String
    let text: String
    let timestamp: Timestamp
    
    var user: User?
}
