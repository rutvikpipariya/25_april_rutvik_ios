//
//  ViewController.swift
//  login page
//
//  Created by MAC2 on 14/07/23.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad ()
        // Do any additional setup after loading the view.
    }
    @IBAction func btn_login(_ sender: Any)
    {
        let alert_login=UIAlertController(title: "Login", message: "Enter conferm username and password!", preferredStyle: .alert)
                alert_login.addTextField { (txtUsername) in
                    txtUsername.placeholder="Username"
                    txtUsername.textAlignment = .center
                }
                alert_login.addTextField { (txtPassword) in
                    txtPassword.placeholder="Password"
                    txtPassword.isSecureTextEntry=true
                    txtPassword.textAlignment = .center
                }
        let btn1=UIAlertAction(title: "Login", style: .destructive, handler:{ACTION in
            let alert = UIAlertController(title: "login successfully", message: "thank you", preferredStyle:.alert)
            let btn1=UIAlertAction(title: "Cancel", style:.cancel, handler: nil)
            alert.addAction(btn1)
            self.present(alert, animated: true, completion: nil)
        })
                let btn2=UIAlertAction(title: "Cancel", style:.cancel, handler: nil)
                alert_login.addAction(btn1)
                alert_login.addAction(btn2)
                present(alert_login, animated: true, completion: nil)
    }
}
