//
//  LoginViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

class LoginViewController: UIViewController {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var ButtonStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if Auth.auth().currentUser != nil {
            let signupVC=storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            navigationController?.pushViewController(signupVC, animated: true)
        }
        
        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
           if error != nil || user == nil {
             print("Your account is already login!")
            
           } else {
             // Show the app's signed-in state.
               let signupVC=self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
               self.navigationController?.pushViewController(signupVC, animated: true)
           }
         }
        
        ButtonStyle.layer.cornerRadius = 25
    }
    
    //===========================================
    //Button Actions
    //===========================================
    
    @IBAction func loginButton(_ sender: Any)
    {
        if self.emailTextField.text == "" || self.passwordTextField.text == ""
        {
                
                let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            
        }
        else
        {
                
                Auth.auth().signIn(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                    
                    if error == nil
                    {
                        
                        //Print into the console if successfully logged in
                        print("You have successfully logged in")
                        
                        //Go to the HomeViewController if the login is sucessful
                        let signupVC=self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
                        self.navigationController?.pushViewController(signupVC, animated: true)
                        
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
    
    @IBAction func forgotpassButton(_ sender: Any) 
    {
        if self.emailTextField.text == ""
        {
                let alertController = UIAlertController(title: "Oops!", message: "Please enter an email.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
            
        }
        else
        {
                Auth.auth().sendPasswordReset(withEmail: self.emailTextField.text!, completion: { (error) in
                    
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
                        self.emailTextField.text = ""
                    }
                    
                    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                })
            }
    }
    
    @IBAction func facebookButton(_ sender: Any) 
    {
        
    }
    
    @IBAction func googleButton(_ sender: Any) 
    {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
           guard error == nil else { return }
            let user = signInResult!.user
            let emailAddress = user.profile?.email
            let fullName = user.profile?.name
            let givenName = user.profile?.givenName
            let familyName = user.profile?.familyName
            let profilePicUrl = user.profile?.imageURL(withDimension: 320)
            
            print("User:\(user)")
            print("EmailAddress:\(emailAddress!)")
            print("Fullname:\(fullName!)")
            print("GivenName:\(givenName!)")
            print("FamilyName:\(familyName!)")
            print("ProfilePhoto:\(profilePicUrl!)")
        

            let signupVC=self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            self.navigationController?.pushViewController(signupVC, animated: true)
           
         }
    }
    
    @IBAction func signupButton(_ sender: Any) 
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
    
}
