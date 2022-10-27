//
//  SwiftUIChatTutorialApp.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/13.
//

import SwiftUI
import Firebase

@main
struct SwiftUIChatTutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
