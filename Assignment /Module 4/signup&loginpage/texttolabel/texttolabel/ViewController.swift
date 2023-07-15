//
//  ViewController.swift
//  texttolabel
//
//  Created by JADEJA PARIKSHITSINH on 15/07/23.
//

import UIKit

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!

    @IBAction func buttonClicked(_ sender: UIButton) {
        if let text = textField.text {
            label.text = text
        }
    }
}
