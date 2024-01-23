//
//  SignupViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import UIKit
import FirebaseAuth

class SignupViewController: UIViewController {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var ButtonStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ButtonStyle.layer.cornerRadius = 25
    }
    
    @IBAction func signupButton(_ sender: Any) 
    {
        if emailTextField.text == ""
        {
                let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
            
        }
        else
        {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                    
                    if error == nil
                    {
                        print("You have successfully signed up")
                        //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                        
                        self.navigationController?.popToRootViewController(animated: true)
                        
                    }
                    else
                    {
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alertController.addAction(defaultAction)
                        
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
    }

}
