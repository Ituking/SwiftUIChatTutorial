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
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    .padding(.leading)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Okubo Itsuki")
                            .font(.system(size: 18))
                        
                        Text("Available")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                    
                    Spacer()
                    
                }
                .frame(height: 80)
                .background(Color.white)
                
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
