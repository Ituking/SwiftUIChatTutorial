//
//  Extensions.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
