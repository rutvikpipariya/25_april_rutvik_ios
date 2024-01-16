//
//  HomeViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 16/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var green_view: UIView!
    
    @IBOutlet weak var orange_view: UIView!
    
    @IBOutlet weak var blue_view: UIView!
    
    
    @IBOutlet weak var btn_add: UIButton!
    
    @IBOutlet weak var btn_update: UIButton!
    
    @IBOutlet weak var btn_show: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        green_view.layer.cornerRadius = 20
        orange_view.layer.cornerRadius = 20
        blue_view.layer.cornerRadius = 20
        
        btn_add.layer.cornerRadius = 18
        btn_update.layer.cornerRadius = 18
        btn_show.layer.cornerRadius = 18


        
        
        
        
        
    }
    
    @IBAction func btn_show(_ sender: Any) 
    {
//        view.backgroundColor = UIColor.lightGray
        let show = storyboard?.instantiateViewController(identifier: "showvc") as! ShowViewController
        navigationController?.pushViewController(show, animated: true)
    }
    
    @IBAction func btn_update(_ sender: Any)
    {
//        view.backgroundColor = UIColor.green
        let update = storyboard?.instantiateViewController(identifier: "updatevc") as! UpdateViewController
        navigationController?.pushViewController(update, animated: true)
    }
    
    @IBAction func btn_add(_ sender: Any) 
    {
        view.backgroundColor = UIColor.brown
        let add = storyboard?.instantiateViewController(identifier: "addvc") as! AddViewController
        navigationController?.pushViewController(add, animated: true)
    }
    
}
