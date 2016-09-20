//
//  LoginTextField.swift
//  001 Sign Up
//
//  Created by Joey Gordon on 9/19/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class LoginTextField: UITextField {
    
    var labelText: String?
    
    lazy var labelView: UILabel = {
        let label = UILabel()
        if self.labelText != nil {
            label.text = self.labelText
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = colorSecondary
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.addSubview(labelView)
        labelView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
        labelView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        labelView.heightAnchor.constraint(equalToConstant: 16).isActive = true
        labelView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8).isActive = true
        
//        self.layer.borderColor = UIColor(red:0.56, green:0.56, blue:0.56, alpha:1.00).cgColor
//        self.layer.borderWidth = 1
        self.contentVerticalAlignment = .bottom
        self.font = UIFont(name: "Helvetica-Medium", size: (self.font?.pointSize)!)
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 8)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 8)
    }

}
