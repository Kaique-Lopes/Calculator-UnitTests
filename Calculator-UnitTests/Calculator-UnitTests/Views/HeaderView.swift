//
//  HeaderView.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 20/02/23.
//

import UIKit

class HeaderView: UIView {
    
    private lazy var topLabel: UILabel = {
        let label = LabelFactory.build(
            text: nil,
            font: ThemeFont.bold(ofSize: 18)
        )
        
        return label
    }()

    private lazy var bottomLabel: UILabel = {
        let label = LabelFactory.build(
            text: nil,
            font: ThemeFont.bold(ofSize: 18)
        )
        
        return label
    }()
    
    private let topSpacerView = UIView()
    private let bottomSpacerView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            topSpacerView,
            topLabel,
            bottomSpacerView,
            bottomLabel
        ])
        
        return stack
    }()
    
    
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
