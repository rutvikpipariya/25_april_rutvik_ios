//
//  ViewController.swift
//  within imageview
//
//  Created by JADEJA PARIKSHITSINH on 16/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
                let backgroundImage = UIImage(named: "img1")
                let img = UIImageView(image: backgroundImage)
                img.contentMode = .scaleAspectFill
                img.frame = view.bounds
                view.addSubview(img)
                view.sendSubviewToBack(img)
            }
            
        }

    

