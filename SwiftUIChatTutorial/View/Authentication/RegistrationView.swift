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
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            
            NavigationLink(
                destination: ProfilePhotoSelectorView(),
                isActive: $viewModel.didAuthenticateUser,
                label: { })
            
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
                
                VStack(spacing: 40) {
                    CustomTextField(
                        imageName: "envelope",
                        placeholderText: "Email",
                        isSecureField: false,
                        text: $email
                    )
                    
                    CustomTextField(
                        imageName: "person",
                        placeholderText: "Username",
                        isSecureField: false,
                        text: $username
                    )
                    
                    CustomTextField(
                        imageName: "person",
                        placeholderText: "Full name",
                        isSecureField: false,
                        text: $fullname
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
            
            Button(action: {
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            }, label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            })
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
            
            Spacer()
            
            Button(action: { mode.wrappedValue.dismiss() }, label: {
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign In")
                        .font(.system(size: 14, weight: .semibold))
                }
            })
            .padding(.bottom, 32)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
