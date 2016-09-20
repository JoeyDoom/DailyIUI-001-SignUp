//
//  HomeViewController.swift
//  001 Sign Up
//
//  Created by Joey Gordon on 9/13/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    let transition = CircularTransition()
    let signUpController = SignUpViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = colorWhite
        
        setupViews()
    }
    
    let backgroundImage: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = colorSecondary
        iv.image = #imageLiteral(resourceName: "Background")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let logoView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Logo")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.widthAnchor.constraint(equalToConstant: 146).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 104).isActive = true
        return iv
    }()
    
    let memberButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = colorWhite
//        let attributedText = NSMutableAttributedString(string: "I'm Already A Member", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 14, weight: UIFontWeightThin), NSForegroundColorAttributeName: colorBlack])
//        button.setAttributedTitle(attributedText, for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 14)
        button.setTitleColor(colorBlack, for: .normal)
        button.setTitle("I'M ALREADY A MEMBER", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 186).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = colorPrimary
//        let attributedText = NSMutableAttributedString(string: "Sign Up", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 14, weight: UIFontWeightThin), NSForegroundColorAttributeName: colorBlack])
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 14)
        button.setTitle("SIGN UP", for: .normal)
        button.setTitleColor(colorBlack, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 186).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return button
    }()
    
    let textBlurb: UITextView = {
        let tv = UITextView()
        tv.isEditable = false
        tv.backgroundColor = .clear
        let attributedText = NSMutableAttributedString(string: "Sign up to discover the adventures in your area", attributes: [NSFontAttributeName: UIFont(name: "HelveticaNeue-Thin", size: 16)!, NSForegroundColorAttributeName: colorWhite])
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        attributedText.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSRange(location: 0, length: attributedText.string.characters.count))
        tv.attributedText = attributedText
        return tv
    }()
    
    func setupViews() {
        view.addSubview(backgroundImage)
        backgroundImage.anchorWithConstraintsToTheTop(top: view.topAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, left: view.leftAnchor, topConstant: 8, rightConstant: -8, bottomConstant: -8, leftConstant: 8)
        
        view.addSubview(logoView)
        logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        view.addSubview(textBlurb)
        textBlurb.translatesAutoresizingMaskIntoConstraints = false
        textBlurb.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 32).isActive = true
        textBlurb.heightAnchor.constraint(equalToConstant: 56).isActive = true
        textBlurb.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 88).isActive = true
        textBlurb.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -88).isActive = true
        
        view.addSubview(memberButton)
        memberButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
        memberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        view.addSubview(signupButton)
        signupButton.bottomAnchor.constraint(equalTo: memberButton.topAnchor, constant: -8).isActive = true
        signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        signupButton.addTarget(self, action: #selector(handleSignUpPress), for: .touchUpInside)
    }
    
    func handleSignUpPress() {
        signUpController.transitioningDelegate = self
        signUpController.modalPresentationStyle = .custom
        self.present(signUpController, animated: true, completion: nil)
    }
    
    // ditch the status bar
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = signupButton.center
        transition.circleColor = signupButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = signupButton.center
        transition.circleColor = colorPrimaryTrans
        
        return transition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
