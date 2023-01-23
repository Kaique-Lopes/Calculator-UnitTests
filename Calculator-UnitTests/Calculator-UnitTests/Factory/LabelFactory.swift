//
//  LabelFactory.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 22/01/23.
//

import UIKit

struct LabelFactory {
    static func build(text: String?,
                      font: UIFont,
                      backGroundColor: UIColor = .clear,
                      textColor: UIColor = ThemeColor.text,
                      textAlignment: NSTextAlignment = .center) -> UILabel{
        let label = UILabel()
        label.text = text
        label.font = font
        label.backgroundColor = backGroundColor
        label.textColor = textColor
        label.textAlignment = textAlignment
        
        return label
    }
}
