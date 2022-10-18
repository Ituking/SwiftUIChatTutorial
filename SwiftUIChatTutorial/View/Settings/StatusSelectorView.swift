//
//  StatusSelectorView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/18.
//

import SwiftUI

struct StatusSelectorView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Available")
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: 56)
                    .background(Color.white)
                    
                    Text("SELECT YOUR STATUS")
                    
                    // for loop with options
                }
            }
        }
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectorView()
    }
}
