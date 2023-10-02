//
//  MAPViewController.swift
//  API_MVC_AlmoSwifty
//
//  Created by Rutvik Pipaliya on 02/10/23.
//

import UIKit
import WebKit

class MAPViewController: UIViewController {

    var mapURL=""
    @IBOutlet weak var mymap: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url=URL(string: mapURL)
        let req=URLRequest(url: url!)
        mymap.load(req)
    }
    

   

}
