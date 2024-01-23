//
//  ShowdataViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 23/01/24.
//

import UIKit

class ShowdataViewController: UIViewController {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var tableView: UITableView!
    
    //===========================================
    //Variable
    //===========================================
    
    var stdata=[Studinfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchalldata()
    }
    
    //===========================================
    //Function
    //===========================================
    
    func fetchalldata() {
        let dml = DMLModel()
        stdata = dml.showalldata()
        tableView.reloadData()
    }

    
}

extension ShowdataViewController: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style:.value1, reuseIdentifier: nil)
        cell.textLabel?.text=stdata[indexPath.row].name
        cell.detailTextLabel?.text=stdata[indexPath.row].sub
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            let dml=DMLModel()
            stdata=dml.deletedata(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
    }
    
}
