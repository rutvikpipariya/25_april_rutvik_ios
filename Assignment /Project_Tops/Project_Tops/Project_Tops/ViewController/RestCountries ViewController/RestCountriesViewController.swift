//
//  RestCountriesViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import UIKit
import SwiftyJSON
import Kingfisher
import Alamofire

class RestCountriesViewController: UIViewController {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    //===========================================
    //Variables
    //===========================================
    
    var apiArray=[APIModel]()
    var filteredArray = [APIModel]()
    var isSearching = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchBar.delegate = self
        apicalling()
    }

    //===========================================
    //Functions
    //===========================================
    
    func apicalling()
    {
        let url=URL(string: "https://restcountries.com/v3.1/all")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            do
            {
                let json=try JSON(data: data!)
                let finalData=json.arrayObject?.count
                
                for i in 0..<finalData!
                {
                    let nm=json[i]["name"]["common"].stringValue
                    let cap=json[i]["capital"][0].stringValue
                    let lat=json[i]["latlng"][0].doubleValue
                    let lng=json[i]["latlng"][1].doubleValue
                    let map=json[i]["maps"]["googleMaps"].stringValue
                    let flag=json[i]["flags"]["png"].stringValue
                    
                    self.apiArray.append(APIModel(name: nm, capital: cap, lat: lat, lng: lng, maps: map, flags: flag))
                    
                    
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

//===========================================
//TableViews method
//===========================================

extension RestCountriesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearching ? filteredArray.count : apiArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let country = isSearching ? filteredArray[indexPath.row] : apiArray[indexPath.row]
        cell.countryName.text = country.name
        cell.capitalName.text = country.capital
        cell.imgView.kf.setImage(with: URL(string: country.flags!))
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mapVC = storyboard?.instantiateViewController(identifier: "MapViewController") as! MapViewController
        let selectedCountry = isSearching ? filteredArray[indexPath.row] : apiArray[indexPath.row]
        mapVC.latitude = selectedCountry.lat
        mapVC.longitude = selectedCountry.lng
        present(mapVC, animated: true, completion: nil)
    }
}

//===========================================
//UISearch Bar Delegate method
//===========================================

extension RestCountriesViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if !searchText.isEmpty {
            filteredArray = apiArray.filter {
                $0.name.lowercased().contains(searchText.lowercased()) ||
                $0.capital.lowercased().contains(searchText.lowercased())
            }
            isSearching = true
        } else {
            filteredArray.removeAll()
            isSearching = false
        }
        tableView.reloadData()
    }
}
