//
//  ViewController.swift
//  FireBase-Auth
//
//  Created by Rutvik Pipaliya on 24/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var logView: UIView!
    @IBOutlet weak var signView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let titleColor = [NSAttributedString.Key.foregroundColor:UIColor.white]
        segment.setTitleTextAttributes(titleColor, for:.highlighted)
        self.view.bringSubviewToFront(logView)
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            self.view.bringSubviewToFront(logView)
        case 1:
            self.view.bringSubviewToFront(signView)
        default:
            break
        }
    }
    
}

