//
//  ViewController.swift
//  Facebook Integration App
//
//  Created by Rutvik Pipaliya on 16/01/24.
//

import UIKit
import FacebookLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loginButton = FBLoginButton()
                loginButton.center = view.center
                view.addSubview(loginButton)
        
        if let token = AccessToken.current,
                !token.isExpired {
                // User is logged in, do work such as go to next view controller.
        } else {
            loginButton.permissions = ["public_profile", "email"]
        }
        
    }


}

