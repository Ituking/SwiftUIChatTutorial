//
//  UserCell.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/20.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            
            Image("venom-7")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
//            message info
            VStack {
                
            }
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
