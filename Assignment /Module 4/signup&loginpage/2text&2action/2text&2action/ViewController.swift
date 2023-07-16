//
//  ViewController.swift
//  2text&2action
//
//  Created by JADEJA PARIKSHITSINH on 16/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func alertbtn(_ sender: UIButton) {
        let value1 = textField1.text ?? ""
        let value2 = textField2.text ?? ""
        
        let alert = UIAlertController(title: "Alert", message: "Value 1: \(value1)\nValue 2: \(value2)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
