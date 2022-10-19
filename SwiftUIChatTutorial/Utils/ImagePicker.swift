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
        <#code#>
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            <#code#>
        }
    }
}
