//
//  UpdateViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit

class UpdateViewController: UIViewController {

    @IBOutlet weak var update_view: UIView!
    
    @IBOutlet weak var txt_update: UITextField!
    
    @IBOutlet weak var txt_stock: UITextField!
    
    @IBOutlet weak var btn_update: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        update_view.layer.cornerRadius = 20
        btn_update.layer.cornerRadius = 18
    }
    
    @IBAction func btn_update(_ sender: Any) {
    }
    
    
    
    @IBAction func swipe_gst(_ sender: UISwipeGestureRecognizer)
    {
        if sender.direction == .right
        {
            navigationController?.popViewController(animated: true)

        }
    }
    
}
