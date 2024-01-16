//
//  ViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet weak var yellow_view: UIView!
    
    @IBOutlet weak var txt_username: UITextField!
    
    @IBOutlet weak var txt_password: UITextField!
    
    @IBOutlet weak var btn_login: UIButton!
    
    
    @IBOutlet weak var btn_new: UIButton!
    
//    var user = Firebase.Auth().currentUser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        
        yellow_view.layer.cornerRadius = 20
        btn_login.layer.cornerRadius = 18
        btn_new.layer.cornerRadius = 18
        
        Auth.auth().addStateDidChangeListener() { auth, user in
                    // 2
                    if user != nil {
                        let chatvc = self.storyboard?.instantiateViewController(withIdentifier: "chatvc") as! ChatViewController
                        self.navigationController?.pushViewController(chatvc, animated: true)
                    }
                }

     
        
    }

    @IBAction func btn_reset(_ sender: Any)
    {
        let reset = storyboard?.instantiateViewController(identifier: "resetvc") as! ResetViewController
        navigationController?.pushViewController(reset, animated: true)
    }
    
    @IBAction func btn_login(_ sender: Any) 
    {
        if self.txt_username.text == "" || self.txt_password.text == "" {
                
                //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
                
                let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            
            } else {
                
                Auth.auth().signIn(withEmail: self.txt_username.text!, password: self.txt_password.text!) { (user, error) in
                    
                    if error == nil {
                        
                        //Print into the console if successfully logged in
                        print("You have successfully logged in")
                        
                        //Go to the HomeViewController if the login is sucessful
                        let chatvc = self.storyboard?.instantiateViewController(withIdentifier: "chatvc") as! ChatViewController
                        self.navigationController?.pushViewController(chatvc, animated: true)
                        //self.present(vc!, animated: true, completion: nil)
                        
                    } else {
                        
                        //Tells the user that there is an error and then gets firebase to tell them the error
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alertController.addAction(defaultAction)
                        
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
    }
    
    @IBAction func btn_new(_ sender: Any) 
    {
        let signup = storyboard?.instantiateViewController(identifier: "signupvc") as! SignupViewController
        navigationController?.pushViewController(signup, animated: true)
    }
    
}

