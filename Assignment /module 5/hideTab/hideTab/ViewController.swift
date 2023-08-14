//
//  ViewController.swift
//  hideTab
//
//  Created by MAC1 on 14/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any)
    {
        let secondVC=storyboard?.instantiateViewController(identifier: "sVC") as! TabViewController
      
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

