//
//  SignUpViewController.swift
//  FireBase-Auth
//
//  Created by Rutvik Pipaliya on 24/10/23.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_pass: UITextField!
    @IBOutlet weak var txt_conpass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txt_pass.clearButtonMode = .whileEditing
        txt_email.clearButtonMode = .whileEditing
        txt_conpass.clearButtonMode = .whileEditing
        
        txt_email.attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red:0/255.0, green:0/255.0, blue: 0/255.0, alpha: 0.6)])
        txt_pass.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6)])
        txt_conpass.attributedPlaceholder = NSAttributedString(string: "Confirm Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6)])
        
        txt_email.addBottomBorder(color: UIColor.black)
        txt_pass.addBottomBorder(color: UIColor.black)
        txt_conpass.addBottomBorder(color: UIColor.black)
    }
    

    @IBAction func signUp_btn(_ sender: Any)
    {
        if txt_email.text == ""
        {
                let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
            
        }
        else
        {
            Auth.auth().createUser(withEmail: txt_email.text!, password: txt_pass.text!) { (user, error) in
                    
                    if error == nil
                    {
                        print("You have successfully signed up")
                        //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username

                        self.txt_email.text = ""
                        self.txt_pass.text = ""
                        self.txt_conpass.text = ""
                        
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
