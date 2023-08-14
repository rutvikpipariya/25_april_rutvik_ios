//
//  ViewController.swift
//  TextValid
//
//  Created by MAC1 on 14/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text_: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        if (text_.text?.validmail)!{
            print("Valid")
        }
        else {
            print("Not Valid")
        }
    }
    
}
extension String{
    var validmail: Bool{
        let email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3}"
        let test = NSPredicate(format: "SELF MATCHES %@", email)
        return test.evaluate(with: self)
    }
}
