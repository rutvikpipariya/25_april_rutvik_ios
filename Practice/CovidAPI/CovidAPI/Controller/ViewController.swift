//
//  ViewController.swift
//  CovidAPI
//
//  Created by Rutvik Pipaliya on 22/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apicalling()
    }

    func apicalling()
    {
        let url=URL(string: "https://data.covid19india.org/data.json")
        
        URLSession.shared.dataTask(with: url!) {data, response, error
            in
            
            do
            {
                let dict=try JSONSerialization.jsonObject(with: data!) as! Dictionary<String,Any>
                //print(dict)
                
                let newdict=dict["statewise"]
                print(newdict!)
            }
            catch
            {
                print(error.localizedDescription)
            }
            
            
        }.resume()
    }

}

