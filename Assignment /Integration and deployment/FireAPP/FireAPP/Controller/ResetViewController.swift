//
//  ResetViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase


class ResetViewController: UIViewController {

    @IBOutlet weak var blue_view: UIView!
    
    @IBOutlet weak var txt_username: UITextField!
    
    @IBOutlet weak var txt_password: UITextField!
    
    
    @IBOutlet weak var btn_reset: UIButton!
    
    
    //var ref: DatabaseReference!

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        blue_view.layer.cornerRadius = 20
        btn_reset.layer.cornerRadius = 18
        //ref = Database.database().reference()
    }
    

    @IBAction func btn_reset(_ sender: Any) 
    {
        if self.txt_username.text == "" {
               let alertController = UIAlertController(title: "Oops!", message: "Please enter an email.", preferredStyle: .alert)
               
               let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
               alertController.addAction(defaultAction)
               
               present(alertController, animated: true, completion: nil)
           
           } else {
               Auth.auth().sendPasswordReset(withEmail: self.txt_username.text!, completion: { (error) in
                   
                   var title = ""
                   var message = ""
                   
                   if error != nil {
                       title = "Error!"
                       message = (error?.localizedDescription)!
                   } else {
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
    
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer) 
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
