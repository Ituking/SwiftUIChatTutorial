//
//  LoginView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/13.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                VStack(spacing: 20) {
                    TextField("Email", text: $email)
                    
                    SecureField("Password", text: $password)
                }
                .padding([.top, .horizontal], 32)
                
                Spacer()
            }
            .padding(.leading)
        }
        .padding(.top, -56)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
