//
//  MainTabView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/16.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Chats")
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                
                Text("Channels")
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }
                
                Text("Settings")
                    .tabItem {
                        Image(systemName: "gear")
                    }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
