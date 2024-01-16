//
//  WebViewController.swift
//  WebViewApp
//
//  Created by Rutvik Pipaliya on 16/01/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
  
    @IBOutlet weak var webVieww: WKWebView!
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let urlString = urlString, let url = URL(string: urlString) {
                    webVieww.navigationDelegate = self
                    webVieww.load(URLRequest(url: url))
                }
    }
    
}
