//
//  LogoView.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 21/01/23.
//

import UIKit
import SnapKit

class LogoView: UIView {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: .init(named: "icCalculatorBW"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private lazy var topLabel: UILabel = {
        let label = UILabel()
        let text = NSMutableAttributedString(
            string: "Mr TIP",
            attributes: [.font: ThemeFont.demiBold(ofSize: 16)])
        text.addAttributes([.font: ThemeFont.bold(ofSize: 24)], range: NSMakeRange(3, 3))
        label.attributedText = text
        return label
    }()
    
    private lazy var bottomLabel: UILabel = {
        let label = UILabel()
        label.text = "teste"
        
        return label
    }()
    
    private lazy var hStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
        imageView,
        topLabel,
        bottomLabel
        ])
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
