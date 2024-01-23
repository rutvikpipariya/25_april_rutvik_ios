//
//  ViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

class ViewController: UIViewController {

    
 
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicatorAnimating()
    }

    private func activityIndicatorAnimating() {
        activityIndicator.startAnimating()
                Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { [weak self] _ in
                    let signupVC=self?.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                    self?.navigationController?.pushViewController(signupVC, animated: true)
                }
    }

}

