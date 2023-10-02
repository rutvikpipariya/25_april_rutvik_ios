//
//  ViewController.swift
//  API_MVC_AlmoSwifty
//
//  Created by Rutvik Pipaliya on 02/10/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataArray=[APIModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apicalling()
    }

    
    func apicalling()
    {
        let url=URL(string: "https://restcountries.com/v3.1/all")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            do
            {
                let jsonObj=try JSON(data: data!)
                let apiArray=jsonObj.arrayObject?.count
                
                for i in 0..<apiArray!
                {
                    let nm=jsonObj[i]["name"]["common"].stringValue
                    let cap=jsonObj[i]["capital"][0].stringValue
                    let map=jsonObj[i]["maps"]["googleMaps"].stringValue
                    let flag=jsonObj[i]["flags"]["png"].stringValue
                    
                    self.dataArray.append(APIModel(name: nm, capital: cap, maps: map, flags: flag))
                    print(self.dataArray)
                }
                
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
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.cn_name.text=dataArray[indexPath.row].name
        cell.cn_capital.text=dataArray[indexPath.row].capital
        cell.cn_image.kf.setImage(with: URL(string: dataArray[indexPath.row].flags!))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mapVC=storyboard?.instantiateViewController(withIdentifier: "mapVC") as! MAPViewController
        mapVC.mapURL=dataArray[indexPath.row].maps!
        present(mapVC, animated: true)
    }
    
    
}
