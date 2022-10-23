//
//  ProfilePhotoSelectorView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/23.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var imagePickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @ObservedObject var viewModel = AuthViewModel()
    
    var body: some View {
        VStack {
            Button(action: {
                imagePickerPresented.toggle()
            }, label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                } else {
                    Image("plus_photo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                        .padding(.top, 44)
                        .foregroundColor(.black)
                }
            })
//            .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
//                ImagePicker(image: $selectedImage)
//            })
        }
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
