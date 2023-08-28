//
//  ViewController.swift
//  Validationapp
//
//  Created by MAC1 on 28/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Login(_ sender: UIButton)
    {
        if (email.text?.validmail)!{
            print("Valid")
        }
        else {
            print("Not Valid")
        }
        if (number.text?.validnumber)!{
            print("Valid")
        }
        else {
            print("Not Valid")
        }
        if (pass.text?.validpass)!{
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
        let validation = NSPredicate(format: "SELF MATCHES %@", email)
        return validation.evaluate(with: self)
    }
    
    var validnumber: Bool{
        do{
            let nambar = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let validation = nambar.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            if let exa = validation.first{
                return exa.resultType == .phoneNumber && exa.range.location == 0 && exa.range.length == self.count && self.count == 10
            }
            else{
                return false
            }
        } catch {
            return false
        }
    }
    var validpass: Bool{
        let validation = NSPredicate(format: "SELF MATCHES %@", "^(?=.[a-z])(?=.[$@$£!%?&])[A-Za-z\\d$@$£!%?&]{8,}")
        return validation.evaluate(with: self)
    }
}
/*
 import UIKit

 class ViewController: UIViewController {

     @IBOutlet weak var email: UITextField!
     @IBOutlet weak var pass: UITextField!
     @IBOutlet weak var number: UITextField!
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }

     @IBAction func button(_ sender: UIButton) {
         if (email.text?.validmail)!{
             print("Valid")
         }
         else {
             print("Not Valid")
         }
         if (pass.text?.validpass)!{
             print("Valid")
         }
         else {
             print("Not Valid")
         }
         if (number.text?.validnumber)!{
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
     var validpass: Bool{
         let test = NSPredicate(format: "SELF MATCHES %@", "^(?=.[a-z])(?=.[$@$£!%?&])[A-Za-z\\d$@$£!%?&]{8,}")
         return test.evaluate(with: self)
     }
     var validnumber: Bool{
         do{
             let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
             let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
             if let res = matches.first{
                 return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count && self.count == 10
             }
             else{
                 return false
             }
         } catch {
             return false
         }
     }
 }
 */
