//
//  ViewController.swift
//  NewFirebaseapp
//
//  Created by Rutvik Pipaliya on 18/10/23.
//

import UIKit
import FirebaseAuth
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if Auth.auth().currentUser != nil {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "homeVC")
            self.present(vc!, animated: true, completion: nil)
        }
        
    }
    @IBAction func btn_login(_ sender: Any) 
    {
        if self.txt_username.text == "" || self.txt_password.text == ""
        {
                
                let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            
        }
        else
        {
                
                Auth.auth().signIn(withEmail: self.txt_username.text!, password: self.txt_password.text!) { (user, error) in
                    
                    if error == nil 
                    {
                        
                        //Print into the console if successfully logged in
                        print("You have successfully logged in")
                        
                        //Go to the HomeViewController if the login is sucessful
                        let vc = self.storyboard?.instantiateViewController(withIdentifier: "homeVC")
                        self.present(vc!, animated: true, completion: nil)
                        
                    } 
                    else
                    {
                        
                        //Tells the user that there is an error and then gets firebase to tell them the error
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alertController.addAction(defaultAction)
                        
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
    }
    

    @IBAction func btn_resetpassword(_ sender: Any)
    {
        if self.txt_username.text == ""
        {
                let alertController = UIAlertController(title: "Oops!", message: "Please enter an email.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
            
        }
        else
        {
                Auth.auth().sendPasswordReset(withEmail: self.txt_username.text!, completion: { (error) in
                    
                    var title = ""
                    var message = ""
                    
                    if error != nil 
                    {
                        title = "Error!"
                        message = (error?.localizedDescription)!
                    } 
                    else
                    {
                        title = "Success!"
                        message = "Password reset email sent."
                        self.txt_username.text = ""
                    }
                    
                    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                })
            }
    }
    
    @IBAction func btn_signup(_ sender: Any) 
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "signupVC") as! SignupViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
    
}

