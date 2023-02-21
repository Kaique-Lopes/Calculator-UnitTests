//
//  BillInputView.swift
//  Calculator-UnitTests
//
//  Created by Kaique Lopes on 21/01/23.
//

import UIKit

class BillInputView: UIView {
    
    private lazy var headerView: HeaderView = {
        return HeaderView()
    }()
    
    private lazy var textfieldContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addCornerRadius(radius: 8.0)
        return view
    }()
    
    private lazy var currencyLabel: UILabel = {
        let label = LabelFactory.build(
            text: "R$",
            font: ThemeFont.bold(ofSize: 24)
        )
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        return label
    }()
    
    lazy var textfield: UITextField = {
        let tf = UITextField()
        tf.font = ThemeFont.demiBold(ofSize: 28)
        tf.borderStyle = .none
        tf.setContentHuggingPriority(.defaultLow, for: .horizontal)
        tf.keyboardType = .decimalPad
        tf.tintColor = ThemeColor.text
        tf.textColor = ThemeColor.text
        
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: 36))
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(
            title: "Done",
            style: .plain,
            target: self,
            action: #selector(doneButtonTapped)
        )
        
        toolbar.items = [
            UIBarButtonItem(
                barButtonSystemItem: .flexibleSpace,
                target: nil,
                action: nil
            ),
            doneButton
        ]
        toolbar.isUserInteractionEnabled = true
        tf.inputAccessoryView = toolbar
        
        return tf
    }()
    
    init() {
        super.init(frame: .zero)
        layout()
    } 
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        [headerView,textfieldContainerView].forEach(addSubview(_:))
        
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.centerY.equalTo(textfieldContainerView.snp.centerY)
            make.width.equalTo(68)
            make.height.equalTo(24)
            make.trailing.equalTo(textfieldContainerView.snp.leading).offset(-24)
        }
        
        textfieldContainerView.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
            
        }
        
        textfieldContainerView.addSubview(currencyLabel)
        textfieldContainerView.addSubview(textfield)
        
        currencyLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(textfieldContainerView.snp.leading).offset(16)
        }
        
        textfield.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(currencyLabel.snp.trailing).offset(16)
            make.trailing.equalTo(textfieldContainerView.snp.trailing).offset(-16)
        }
    }
    
    @objc func doneButtonTapped() {
        textfield.endEditing(true)
    }
}
