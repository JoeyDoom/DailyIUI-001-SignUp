//
//  Extensions.swift
//  001 Sign Up
//
//  Created by Joey Gordon on 9/13/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchorToTop(top: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil){
        anchorWithConstraintsToTheTop(top: top, right: right, bottom: bottom, left: left)
    }
    
    func anchorWithConstraintsToTheTop(top: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, rightConstant: CGFloat = 0, bottomConstant: CGFloat = 0, leftConstant: CGFloat = 0) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: rightConstant).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: bottomConstant).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
        }
    }
    
    func addConstraintsWithFormat(format: String, views: UIView...){
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

extension UINavigationItem {
    func changeNavBarTitle(title: String) {
        // set up navbar title
        let titleLabel = UILabel(frame: CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 100, height: 24 )))
        titleLabel.text = title
        titleLabel.textColor = .white
        self.titleView = titleLabel
    }
    
}

