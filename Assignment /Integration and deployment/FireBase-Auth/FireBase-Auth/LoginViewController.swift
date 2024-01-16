//
//  LoginViewController.swift
//  FireBase-Auth
//
//  Created by Rutvik Pipaliya on 24/10/23.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var email_text: UITextField!
    @IBOutlet weak var passs_text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        email_text.clearButtonMode = .whileEditing
        passs_text.clearButtonMode = .whileEditing
        
        email_text.attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red:0/255.0, green:0/255.0, blue: 0/255.0, alpha: 0.6)])
        passs_text.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6)])
        
        email_text.addBottomBorder(color: UIColor.black)
        passs_text.addBottomBorder(color: UIColor.black)
    }

    @IBAction func reset_Pass(_ sender: Any) 
    {
        if self.email_text.text == ""
        {
                let alertController = UIAlertController(title: "Oops!", message: "Please enter an email.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
            
            
        }
        else
        {
                Auth.auth().sendPasswordReset(withEmail: self.email_text.text!, completion: { (error) in
                    
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
                        self.email_text.text = ""
                    }
                    
                    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                    
                    self.email_text.text = ""
                    self.passs_text.text = ""
                })
            }
    }
    @IBAction func login_btn(_ sender: Any) 
    {
        if self.email_text.text == "" || self.passs_text.text == ""
        {
                
                let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            
            
        }
        else
        {
                
                Auth.auth().signIn(withEmail: self.email_text.text!, password: self.passs_text.text!) { (user, error) in
                    
                    if error == nil
                    {
                        
                        //Print into the console if successfully logged in
                        print("You have successfully logged in")
                        
                        //Go to the HomeViewController if the login is sucessful
                        let signupVC=self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as! MainViewController
                        self.navigationController?.pushViewController(signupVC, animated: true)
                        
                        self.email_text.text = ""
                        self.passs_text.text = ""
                        
                    }
                    else
                    {
                        
                        //Tells the user that there is an error and then gets firebase to tell them the error
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alertController.addAction(defaultAction)
                        
                        self.present(alertController, animated: true, completion: nil)
                        
                        self.email_text.text = ""
                        self.passs_text.text = ""
                    }
                }
            }
    }
   
}

extension UITextField {
    func addBottomBorder(height: CGFloat = 2, color: UIColor = .black) {
        let borderView = UIView()
        borderView.backgroundColor = color
        borderView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(borderView)
        NSLayoutConstraint.activate(
            [
                borderView.leadingAnchor.constraint(equalTo: leadingAnchor),
                borderView.trailingAnchor.constraint(equalTo: trailingAnchor),
                borderView.bottomAnchor.constraint(equalTo: bottomAnchor),
                borderView.heightAnchor.constraint(equalToConstant: height)
            ]
        )
    }
}
