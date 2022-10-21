//
//  UserCell.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/21.
//

import SwiftUI

struct UserCell: View {
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
                    Text("Venom")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Okubo Itsuki")
                        .font(.system(size: 15))
                    
                }
                .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
