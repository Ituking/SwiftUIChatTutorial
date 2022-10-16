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
                SettingsHeaderView()
                
                VStack(spacing: 1) {
                    ForEach((0 ... 2), id: \.self) { _ in
                        SettingsCell()
                    }
                }
                
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
