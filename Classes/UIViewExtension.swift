//
//  UIViewExtension.swift
//  ModularComponent
//
//  Created by Bruno Bulso on 06/05/2018.
//

import Foundation
import UIKit

extension UIView {
    
    func roundedCornerColor(borderColor: UIColor = .clear, borderWidth: CGFloat = 0, radius: CGFloat) {
        layer.cornerRadius = radius
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        clipsToBounds = true
    }
    
    func circularCorner() {
        roundedCornerColor(radius: frame.size.width/2.0)
    }
    
    func roundedSideBorder() {
        roundedCornerColor(radius: frame.size.height/2.0)
    }
}
