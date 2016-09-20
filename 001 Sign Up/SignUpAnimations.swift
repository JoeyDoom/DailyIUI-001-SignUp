//
//  SignUpAnimations.swift
//  001 Sign Up
//
//  Created by Joey Gordon on 9/13/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class SignUpAnimations: NSObject {
    
    func bringInForm(insideView  container:UIView) {
        
        let testLabel: UILabel = {
            let label = UILabel()
            label.frame = CGRect(x: 16, y: 16, width: container.frame.width - 32, height: 24)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.heightAnchor.constraint(equalToConstant: 32).isActive = true
            label.text = "SIGN UP"
            label.textColor = colorSecondary
            label.alpha = 0
            label.font = UIFont(name: "HelveticaNeue-Medium", size: 24)
            return label
        }()
        
        let nameField: LoginTextField = {
            let tf = LoginTextField()
            tf.frame = CGRect(x: 16, y: 48, width: container.frame.width - 32, height: 24)
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.heightAnchor.constraint(equalToConstant: 48).isActive = true
//            tf.placeholder = "Real Name"
            tf.labelText = "USERNAME"
            tf.textColor = colorBlack
            tf.backgroundColor = colorWhite
            tf.alpha = 0
            return tf
        }()
        
        let emailField: LoginTextField = {
            let tf = LoginTextField()
            tf.frame = CGRect(x: 16, y: 104, width: container.frame.width - 32, height: 24)
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.heightAnchor.constraint(equalToConstant: 48).isActive = true
//            tf.placeholder = "Email"
            tf.labelText = "REAL NAME"
            tf.textColor = colorBlack
            tf.backgroundColor = colorWhite
            tf.alpha = 0
            return tf
        }()
        
        let passwordField: LoginTextField = {
            let tf = LoginTextField()
            tf.frame = CGRect(x: 16, y: 160, width: container.frame.width - 32, height: 24)
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.heightAnchor.constraint(equalToConstant: 48).isActive = true
//            tf.placeholder = "Password"
            tf.labelText = "PASSWORD"
            tf.textColor = colorBlack
            tf.backgroundColor = colorWhite
            tf.alpha = 0
            return tf
        }()
        
        let signupButton: UIButton = {
            let button = UIButton()
            button.frame = CGRect(x: 16, y: 216, width: container.frame.width - 32, height: 24)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 48).isActive = true
            button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 18)
            button.setTitle("Join The Adventure", for: .normal)
            button.backgroundColor = colorSecondary
            button.alpha = 0
            return button
        }()
        
        container.addSubview(testLabel)
        testLabel.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 40).isActive = true
        testLabel.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -40).isActive = true
        let testLabelTopPosition = testLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 16)
        testLabelTopPosition.isActive = true
        
        container.addSubview(nameField)
        nameField.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 40).isActive = true
        nameField.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -40).isActive = true
        let nameFieldTopPosition = nameField.topAnchor.constraint(equalTo: container.topAnchor, constant: 48)
        nameFieldTopPosition.isActive = true
        
        container.addSubview(emailField)
        emailField.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 40).isActive = true
        emailField.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -40).isActive = true
        let emailFieldTopPosition = emailField.topAnchor.constraint(equalTo: container.topAnchor, constant: 104)
        emailFieldTopPosition.isActive = true
        
        container.addSubview(passwordField)
        passwordField.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 40).isActive = true
        passwordField.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -40).isActive = true
        let passwordFieldTopPosition = passwordField.topAnchor.constraint(equalTo: container.topAnchor, constant: 160)
        passwordFieldTopPosition.isActive = true
        
        container.addSubview(signupButton)
        signupButton.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 40).isActive = true
        signupButton.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -40).isActive = true
        let signupButtonTopPosition = signupButton.topAnchor.constraint(equalTo: container.topAnchor, constant: 216)
        signupButtonTopPosition.isActive = true
        
        
        
        // animate in the label
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 20, options: .curveEaseOut, animations: {
            testLabel.alpha = 1
            testLabelTopPosition.constant += 100
            container.layoutIfNeeded()
            
        }) { (completedAnimation) in
            // maybe do something on complete
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 20, options: .curveEaseOut, animations: {
            nameField.alpha = 1
            nameFieldTopPosition.constant += 108
            container.layoutIfNeeded()
            
        }) { (completedAnimation) in
            // maybe do something on complete
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.5, initialSpringVelocity: 20, options: .curveEaseOut, animations: {
            emailField.alpha = 1
            emailFieldTopPosition.constant += 116
            container.layoutIfNeeded()
            
        }) { (completedAnimation) in
            // maybe do something on complete
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.6, usingSpringWithDamping: 0.5, initialSpringVelocity: 20, options: .curveEaseOut, animations: {
            passwordField.alpha = 1
            passwordFieldTopPosition.constant += 124
            container.layoutIfNeeded()
            
        }) { (completedAnimation) in
            // maybe do something on complete
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.8, usingSpringWithDamping: 0.5, initialSpringVelocity: 20, options: .curveEaseOut, animations: {
            signupButton.alpha = 1
            signupButtonTopPosition.constant += 132
            container.layoutIfNeeded()
            
        }) { (completedAnimation) in
            // maybe do something on complete
        }
    }

}
