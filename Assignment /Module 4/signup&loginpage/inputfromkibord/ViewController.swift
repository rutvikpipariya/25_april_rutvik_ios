//
//  ViewController.swift
//  inputfromkibord
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
        textField1.addTarget(self, action: #selector(textField1DidChange(_:)), for: .editingChanged)
    }

    @objc func textField1DidChange(_ textField: UITextField) {
        // Handle changes in textField1's value
        
        textField2.isUserInteractionEnabled = false
    }
    

}
