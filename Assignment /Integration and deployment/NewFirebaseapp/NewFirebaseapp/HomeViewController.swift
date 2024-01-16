//
//  HomeViewController.swift
//  NewFirebaseapp
//
//  Created by Rutvik Pipaliya on 18/10/23.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class HomeViewController: UIViewController {

    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_subject: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    
    var dbref:DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dbref=Database.database().reference()
    }
    @IBAction func btn_save(_ sender: Any) 
    {
        let stdata=["name":txt_name.text!,
                  "sub":txt_subject.text!,
                  "city":txt_city.text!]
        
        print(stdata)
        //dbref.child("Studinfo").setValue(stdata)
        dbref.child("Studinfo").childByAutoId().setValue(stdata)
    }
    

    @IBAction func btn_logout(_ sender: Any) 
    {
        if Auth.auth().currentUser != nil 
        {
               do
               {
                   try Auth.auth().signOut()
                   let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainVC")
                   present(vc, animated: true, completion: nil)
                   
               } catch let error as NSError {
                   print(error.localizedDescription)
               }
           }
    }
    

}
