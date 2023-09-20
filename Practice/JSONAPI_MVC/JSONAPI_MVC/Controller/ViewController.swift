//
//  ViewController.swift
//  JSONAPI_MVC
//
//  Created by Rutvik Pipaliya on 20/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var apidata=[restModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apicalling()
    }


    func apicalling()
    {
        let apiurl=URL(string: "https://restcountries.com/v2/all")
        
        URLSession.shared.dataTask(with: apiurl!) { data, response, error in
            
            do
            {
                self.apidata=try JSONDecoder().decode([restModel].self, from: data!)
                print(self.apidata)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            catch
            {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_name.text=apidata[indexPath.row].name
        cell.lbl_capital.text=apidata[indexPath.row].capital
        cell.lbl_region.text=apidata[indexPath.row].region
        cell.lbl_subregion.text=apidata[indexPath.row].subregion
        return cell
    }
    
    
}
