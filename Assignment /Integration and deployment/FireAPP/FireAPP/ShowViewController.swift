//
//  ShowViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit

class ShowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer)
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)

        }
    }
    
  
}
