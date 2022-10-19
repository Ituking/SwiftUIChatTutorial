//
//  ImagePicker.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/19.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            <#code#>
        }
    }
}
