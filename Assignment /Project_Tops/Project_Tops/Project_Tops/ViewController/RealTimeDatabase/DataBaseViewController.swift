//
//  DataBaseViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 23/01/24.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseDatabaseInternal

class DataBaseViewController: UIViewController {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var subTextField: UITextField!
    @IBOutlet weak var uiView: UIView!
    
    //===========================================
    //Variable
    //===========================================
    
    var dbref:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dbref=Database.database().reference()
    }
    
    //===========================================
    //Button Actions
    //===========================================
    
    @IBAction func saveDataButton(_ sender: Any) 
    {
        let stdata=["name":nameTextField.text!,
                  "sub":subTextField.text!,
                  "city":cityTextField.text!]
        
        print(stdata)
        dbref.child("Studinfo").childByAutoId().setValue(stdata)
    }
    
    

}
