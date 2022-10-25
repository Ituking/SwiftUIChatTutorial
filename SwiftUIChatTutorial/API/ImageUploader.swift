//
//  ImageUploader.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/25.
//

import Firebase
import UIKit

struct ImageUploader {
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
    }
}
