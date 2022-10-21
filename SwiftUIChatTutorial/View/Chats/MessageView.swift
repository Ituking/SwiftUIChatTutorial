//
//  MessageView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/21.
//

import SwiftUI

struct MessageView: View {
    var isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                
            } else {
                HStack(alignment: .bottom) {
                    Image("venom-7")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    
                    Text("Some test message for now..")
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.system(size: 15))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                .padding(.trailing, 80)
                
                Spacer()
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(isFromCurrentUser: false)
    }
}
