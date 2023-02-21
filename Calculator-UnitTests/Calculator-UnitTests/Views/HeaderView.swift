//
//  HeaderView.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 20/02/23.
//

import UIKit

class HeaderView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() {
        backgroundColor = .red
    }
}
