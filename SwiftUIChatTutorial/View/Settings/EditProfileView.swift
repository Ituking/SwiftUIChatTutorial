//
//  EditProfileView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/16.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Okubo Itsuki"
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack {
                // header
                
                VStack {
                    // photo / edit button / text
                    HStack {
                        // photo / edit button
                        VStack {
                            Image("venom-7")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                            
                            Button(action: {
                                print("Change profile photo here..")
                            }, label: {
                                Text("Edit")
                            })
                        }
                        .padding(.top)
                        
                        Text("Change your name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding([.bottom, .horizontal])
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    TextField("", text: $fullname)
                        .padding(8)
                }
                .background(Color.white)
                
                // status
                
                VStack {
                    // status text
                    
                    // status
                    
                    HStack {
                        Text("At the movies")
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer()
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
