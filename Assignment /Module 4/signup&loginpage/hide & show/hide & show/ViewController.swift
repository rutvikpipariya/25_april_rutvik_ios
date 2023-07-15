//
//  ViewController.swift
//  hide & show
//
//  Created by JADEJA PARIKSHITSINH on 15/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    @IBAction func hideButtonTapped(_ sender: UIButton) {
        label.isHidden = true
    }

    @IBAction func showButtonTapped(_ sender: UIButton) {
        label.isHidden = false
    }
}
