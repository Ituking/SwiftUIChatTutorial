//
//  NewMessageView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/21.
//

import SwiftUI

struct NewMessageView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach((0...10), id: \.self) { _ in
                    UserCell()
                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
