//
//  SignupViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit
import Firebase
import FirebaseAuth



class SignupViewController: UIViewController {

    @IBOutlet weak var green_view: UIView!
    
    @IBOutlet weak var txt_username: UITextField!
    
    @IBOutlet weak var txt_password: UITextField!
    
    
    @IBOutlet weak var btn_signup: UIButton!
    
    
    @IBOutlet weak var google_view: UIView!
    
    @IBOutlet weak var btn_google: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        green_view.layer.cornerRadius = 20
        google_view.layer.cornerRadius = 20

        btn_signup.layer.cornerRadius = 18
        btn_google.layer.cornerRadius = 18
    }
    
    @IBAction func btn_google(_ sender: Any) 
    {
        
    }
    
    @IBAction func btn_signup(_ sender: Any) 
    {
        if txt_username.text == "" {
                let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
            
            } else {
                Auth.auth().createUser(withEmail: txt_username.text!, password: txt_password.text!) { (user, error) in
                    
                    if error == nil {
                        print("You have successfully signed up")
                        //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                        
                        let loginvc = self.storyboard?.instantiateViewController(withIdentifier: "loginvc") as! ViewController
                        self.navigationController?.pushViewController(loginvc, animated: true)
                        
                        //self.present(vc!, animated: true, completion: nil)
                        
                    } else {
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alertController.addAction(defaultAction)
                        
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
    }
    
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer)
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
