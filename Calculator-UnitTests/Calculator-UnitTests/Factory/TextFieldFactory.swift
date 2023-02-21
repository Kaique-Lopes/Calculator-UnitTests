//
//  TextFieldFactory.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 04/02/23.
//

import UIKit

struct TextFieldFactory {
    static func build(font: UIFont,
                      keyboard: UIKeyboardType = .decimalPad,
                      textColor: UIColor = ThemeColor.text,
                      tintColor: UIColor = ThemeColor.text) -> UITextField {
        let tf = UITextField()
        tf.borderStyle = .none
        return tf
    }
}
