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
                
            })
            .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                ImagePicker(image: $selectedImage)
            })
        }
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
