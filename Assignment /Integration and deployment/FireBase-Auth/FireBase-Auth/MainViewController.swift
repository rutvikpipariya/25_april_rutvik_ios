//
//  MainViewController.swift
//  FireBase-Auth
//
//  Created by Rutvik Pipaliya on 24/10/23.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func delete_acc(_ sender: Any)
    {
        createAlert2(title: "Delete Account", message: "Are you sure you want to delete your account? This will permanently erase your account.")
    }
    
    
    
    @IBAction func log_out(_ sender: Any)
    {
        if Auth.auth().currentUser != nil
        {
            do
            {
                try Auth.auth().signOut()
                
                self.navigationController?.popToRootViewController(animated: true)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    func createAlert2 (title:String, message:String){
        let alert2 = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert2.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: { (action) in
            alert2.dismiss(animated: true, completion: nil)
        }))
        alert2.addAction(UIAlertAction(title: "Delete", style: UIAlertAction.Style.destructive, handler: { (action) in
            let user = Auth.auth().currentUser
            
            user?.delete { error in
                if error != nil {
                    // An error happened.
                } else {
                    // Account deleted.
                    print("user deleted")
                }
            }
            self.navigationController?.popToRootViewController(animated: true)
        }))
        self.present(alert2, animated: true, completion: nil)
        
    }
}
