//
//  ViewController.swift
//  WebViewApp
//
//  Created by Rutvik Pipaliya on 16/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func navigateToSecondScreen(withURL url: String) {
            guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "WebViewController") as? WebViewController else {
                return
            }
            secondVC.urlString = url
            navigationController?.pushViewController(secondVC, animated: true)
        }

    @IBAction func youTube(_ sender: Any) 
    {
        navigateToSecondScreen(withURL: "https://www.youtube.com")
    }
    
    @IBAction func gooGle(_ sender: Any) 
    {
        navigateToSecondScreen(withURL: "https://www.google.com")
    }
    
    @IBAction func gitHub(_ sender: Any) 
    {
        navigateToSecondScreen(withURL: "https://github.com/rutvikpipariya/25_april_rutvik_ios")
    }
    
}

