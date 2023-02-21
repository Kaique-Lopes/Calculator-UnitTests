//
//  UIView+Extensions.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 25/01/23.
//

import UIKit

extension UIView {
    func addShadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: Float) {
        layer.cornerRadius = radius
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        var backgroundColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor = backgroundColor
    }
    
    func addCornerRadius(radius: CGFloat) {
        layer.masksToBounds = false
        layer.cornerRadius = radius
    }

}
