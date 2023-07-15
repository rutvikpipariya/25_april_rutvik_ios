//
//  ViewController.swift
//  Login page
//
//  Created by JADEJA PARIKSHITSINH on 15/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        // Simulating a successful login
        let loginSuccessful = true
        
        if loginSuccessful {
            let alertController = UIAlertController(title: "Success", message: "Login successful!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}
