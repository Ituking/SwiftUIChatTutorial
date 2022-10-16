//
//  SettingsView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/16.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 64)
                        .clipShape(Circle())
                    .padding(.leading)
                    
                    VStack {
                        Text("Okubo Itsuki")
                        
                        Text("Available")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                }
                
                Text("Account")
                Text("Account")
                Text("Account")
                
                Text("Log out")
                
                Spacer()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
