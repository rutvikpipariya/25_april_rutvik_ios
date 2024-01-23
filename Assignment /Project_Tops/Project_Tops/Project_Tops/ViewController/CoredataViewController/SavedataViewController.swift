//
//  SavedataViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 23/01/24.
//

import UIKit

class SavedataViewController: UIViewController {

    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var subTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        uiView.layer.masksToBounds = false
        uiView?.layer.shadowColor = UIColor.black.cgColor
        uiView?.layer.shadowOffset =  CGSize.zero
        uiView?.layer.shadowOpacity = 10
        uiView?.layer.shadowRadius = 20
        uiView.layer.cornerRadius = 50
        
        uiView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
        view.addSubview(uiView)
    }
    
    //===========================================
    //Buttons
    //===========================================
    
    @IBAction func savaData(_ sender: Any)
    {
        insertrecord()
    }
    
    @IBAction func showdata(_ sender: Any) 
    {
        let dataVC=storyboard?.instantiateViewController(identifier: "ShowdataViewController") as! ShowdataViewController
        present(dataVC, animated: true, completion: nil)
    }
    
    //===========================================
    //Custom Functions
    //===========================================
    
    func insertrecord()
    {
        let stdata=["name":nameTextField.text!,
                    "sub":subTextField.text!,
                    "city":cityTextField.text!]
        
        let dml=DMLModel()
        dml.savestudinfo(data: stdata)
        try? context.save()
        
        let alert=UIAlertController(title: "Success", message: "Your data has been saved!", preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
            
            self.nameTextField.text=""
            self.subTextField.text=""
            self.cityTextField.text=""
        })
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
        
    }
    
}
