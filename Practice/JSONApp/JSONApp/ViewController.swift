//
//  ViewController.swift
//  JSONApp
//
//  Created by Rutvik Pipaliya on 18/09/23.
//

import UIKit

class ViewController: UIViewController {

    var apidata=Array<Any>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        callingapi()
    }
    
    func callingapi()
    {
        let url=URL(string: "https://restcountries.com/v2/all")
        
        do
        {
            let dt=try Data(contentsOf: url!)
            apidata=try JSONSerialization.jsonObject(with: dt) as! Array<Any>
            print(apidata)
            
        }
        catch
        {
            print(error.localizedDescription)
        }
        
    }

}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dict=apidata[indexPath.row] as! Dictionary<String,Any>
        var cell=UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=dict["name"] as? String
        cell.detailTextLabel?.text=dict["capital"] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let dict=apidata[indexPath.row] as! Dictionary<String,Any>
        let alert=UIAlertController(title: dict["name"] as? String, message: String((dict["population"] as? Int)!), preferredStyle: .alert)
        let ok=UIAlertAction(title: "Ok", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}
