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
                    
                    HStack {
                        Text("Available")
                        Spacer()
                    }
                    .padding()
                    
                    Text("SELECT YOUR STATUS")
                    
                    // for loop with options
                    
                    ForEach((0...10), id: \.self) { _ in
                        HStack {
                            Text("Available")
                            Spacer()
                        }
                        .padding()
                    }
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
