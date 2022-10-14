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
            VStack {
                VStack(alignment: .leading, spacing: 12) {
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
                        VStack(spacing: 16) {
                            HStack {
                                Image(systemName: "envelope")
                                
                                TextField("Email", text: $email)
                            }
                            
                            Divider()
                                .background(Color(.darkGray))
                        }
                        
                        VStack(spacing: 16) {
                            HStack {
                                Image(systemName: "lock")
                                
                                SecureField("Password", text: $password)
                            }
                            
                            Divider()
                                .background(Color(.darkGray))
                        }
                    }
                    .padding([.top, .horizontal], 32)
                }
                .padding(.leading)
                
                HStack {
                    Spacer()
                    
                    NavigationLink(
                        destination: Text("Reset Password.."),
                        label: {
                            Text("Forget Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                        }
                    )
                }
                
                Button(action: {
                    print("Handle sign up..")
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView(),
                    label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                    }).padding(.bottom, 32)
            }
        }
        .padding(.top, -56)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
