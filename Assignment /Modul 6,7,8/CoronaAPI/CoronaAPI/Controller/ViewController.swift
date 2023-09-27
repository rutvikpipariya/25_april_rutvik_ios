//
//  ViewController.swift
//  CoronaAPI
//
//  Created by Rutvik Pipaliya on 22/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //var apidata=[APIModel]()
    var apidataa=[APIModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apicalling()
        
        
    }
    
    
    
    
    
    func apicalling()
    {
        let url=URL(string: "https://data.covid19india.org/data.json")
        
        URLSession.shared.dataTask(with: url!) {data, response, error in
            
            do
            {
                let result = try JSONDecoder().decode(NewData.self, from: data!)
                self.apidataa = result.statewise!
                print(self.apidataa)
                
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
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidataa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lb_state_name.text = apidataa[indexPath.row].state
        cell.lb_Active_Case.text = apidataa[indexPath.row].active
        cell.lb_recovered.text = apidataa[indexPath.row].recovered
        cell.lb_code.text = apidataa[indexPath.row].statecode
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        
        let alert=UIAlertController(title: "State Name", message:apidataa[indexPath.row].state, preferredStyle: .alert)
        let ok=UIAlertAction(title: "Yes", style: .default, handler: { ACTION in
            
            let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
            secondVC.lblstate=self.apidataa[indexPath.row].state!
            secondVC.lblstatecode=self.apidataa[indexPath.row].statecode!
            secondVC.lbllastupdate=self.apidataa[indexPath.row].lastupdatedtime!
            secondVC.lblactive=self.apidataa[indexPath.row].active!
            secondVC.lblconcases=self.apidataa[indexPath.row].confirmed!
            secondVC.lbldeaths=self.apidataa[indexPath.row].deaths!
            secondVC.lblrec=self.apidataa[indexPath.row].recovered!
            self.navigationController?.pushViewController(secondVC, animated: true)
        })
        let more=UIAlertAction(title: "No", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
        
        
    }
}
/*extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidataa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell=TableViewCell()
        let dict=apidataa[indexPath.row] as! Dictionary<String,Any>
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
//        cell.lb_state_name.text=apidata[indexPath.row].state
//        cell.lb_Active_Case.text=apidata[indexPath.row].active
//        cell.lb_recovered.text=apidata[indexPath.row].recovered
//        cell.lb_code.text=apidata[indexPath.row].statecode
        
        //var cell=UITableViewCell(style: .subtitle, reuseIdentifier: nil)

        cell.lb_state_name.text=dict["state"] as? String
        cell.lb_Active_Case.text=dict["active"] as? String
        cell.lb_recovered.text=dict["recovered"] as? String
        cell.lb_code.text=dict["statecode"] as? String
        return cell
    }
    
    
}*/
