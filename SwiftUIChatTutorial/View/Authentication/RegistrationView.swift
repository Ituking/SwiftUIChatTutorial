//
//  RegistrationView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/13.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Spacer()
                }
                
                Text("Get started.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Create your account.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                VStack(spacing: 20) {
                    CustomTextField(
                        imageName: "envelope",
                        placeholderText: "Email",
                        isSecureField: false,
                        text: $email
                    )
                    
                    CustomTextField(
                        imageName: "person",
                        placeholderText: "Email",
                        isSecureField: false,
                        text: $email
                    )
                    
                    CustomTextField(
                        imageName: "person",
                        placeholderText: "Email",
                        isSecureField: false,
                        text: $email
                    )
                    
                    CustomTextField(
                        imageName: "lock",
                        placeholderText: "Password",
                        isSecureField: true,
                        text: $password
                    )
                }
                .padding([.top, .horizontal], 32)
            }
            .padding(.leading)
            
            Spacer()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
