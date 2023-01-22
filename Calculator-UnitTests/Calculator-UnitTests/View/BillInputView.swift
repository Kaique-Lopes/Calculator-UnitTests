//
//  BillInputView.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 21/01/23.
//

import UIKit

class BillInputView: UIView {
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .red
    }
}
