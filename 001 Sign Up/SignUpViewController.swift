//
//  SignUpViewController.swift
//  001 Sign Up
//
//  Created by Joey Gordon on 9/13/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // initiate all them sign up animations
        let signUpAnimations = SignUpAnimations()
        signUpAnimations.bringInForm(insideView: view)
    }
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(colorSecondary, for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        button.contentVerticalAlignment = .bottom
        button.contentHorizontalAlignment = .right
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        button.widthAnchor.constraint(equalToConstant: 64).isActive = true
        return button
    }()
    
    
    let termsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Terms and Conditions", for: .normal)
        button.setTitleColor(colorSecondary, for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        button.contentVerticalAlignment = .bottom
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        return button
    }()
    
    func setupViews() {
        view.backgroundColor = .clear
        view.addSubview(closeButton)
        closeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        closeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        closeButton.addTarget(self, action: #selector(handleCloseButton), for: .touchUpInside)
        
        
        view.addSubview(termsButton)
        termsButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        termsButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
    }
    
    func handleCloseButton() {
        dismiss(animated: true, completion: nil)
        
        // kill all the subviews so that they will animate in every time you open this view
        view.subviews.forEach({ $0.removeFromSuperview() })
        setupViews()
    }
    
    // ditch the status bar
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
