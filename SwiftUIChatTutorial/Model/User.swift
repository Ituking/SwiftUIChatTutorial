//
//  User.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/28.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
    let profileImageUrl: String
}
