//
//  UserCell.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/20.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                
                Image("venom-7")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                // message info
                VStack(alignment: .leading, spacing: 4) {
                    Text("Okubo Itsuki")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is test message for now..")
                        .font(.system(size: 15))
                    
                }
                .foregroundColor(.black)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            Divider()
        }
        .padding(.top)
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
