//
//  EditProfileView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/16.
//

import SwiftUI

struct EditProfileView: View {
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
                    }
                }
                
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
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
