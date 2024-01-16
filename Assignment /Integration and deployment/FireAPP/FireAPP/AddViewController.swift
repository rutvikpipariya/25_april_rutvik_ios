//
//  AddViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseCore

class AddViewController: UIViewController {
    
    @IBOutlet weak var add_view: UIView!
    
    @IBOutlet weak var txt_add: UITextField!
    
    @IBOutlet weak var txt_stok: UITextField!
    
    @IBOutlet weak var btn_add: UIButton!
    
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        add_view.layer.cornerRadius = 20
        btn_add.layer.cornerRadius = 18
        
        ref = Database.database().reference()
        
        
    }
    
    
    @IBAction func btn_add(_ sender: Any)
    {
        if self.txt_add.text == "" || self.txt_stok.text == "" {
            
            
            
            let alertController = UIAlertController(title: "Error", message: "Please enter details Properly...", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
            
            
            
    }
        else
        {
            savedata()
            let alertController = UIAlertController(title: "Record Insert", message: "Your insert Sucessfull...", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: {ACTION in
                self.txt_add.text! = ""
                self.txt_stok.text! = ""
            })
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        }
    
        func savedata()
        {
            let dict = ["Product":txt_add.text!,
                        "Stock":txt_stok.text!]
            ref.child("fire").childByAutoId().setValue(dict)
        }
        
        
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer) 
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)

        }
    }
    
    
}
