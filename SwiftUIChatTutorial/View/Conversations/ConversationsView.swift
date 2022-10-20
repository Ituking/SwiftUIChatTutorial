//
//  ConversationsView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/16.
//

import SwiftUI

struct ConversationsView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
//            chats
            ScrollView {
                VStack {
                    
                }
            }
            
//            floating button
            
            Button(action: {
                print("Show user list sheet..")
            }, label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
