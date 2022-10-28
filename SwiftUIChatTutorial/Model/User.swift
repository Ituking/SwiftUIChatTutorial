//
//  User.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/28.
//

import Foundation

struct User: Identifiable {
    let id: String
    let username: String
    let fullname: String
    let email: String
    let profileImageUrl: String
}
