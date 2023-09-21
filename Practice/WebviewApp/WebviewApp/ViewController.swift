//
//  ViewController.swift
//  WebviewApp
//
//  Created by Rutvik Pipaliya on 13/09/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myweb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let url=URL(string: "https://www.africau.edu/images/default/sample.pdf")!
        let req=URLRequest(url: url)
        myweb.load(req)
        
        
    }


}

