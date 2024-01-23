//
//  CollectionViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 21/01/24.
//

import UIKit

//===========================================
//Global Variable
//===========================================

var data = [myData(list: "1st list", content: ["1","2","3","4"]),myData(list: "2nd list", content: ["5","6","7","8"]),myData(list: "3rd list", content: ["1","2","3","4"]),myData(list: "4th list", content: ["5","6","7","8"]),myData(list: "5th list", content: ["1","2","3","4"]),myData(list: "6th list", content: ["5","6","7","8"]),myData(list: "7th list", content: ["1","2","3","4"]),myData(list: "8th list", content: ["5","6","7","8"]),myData(list: "9th list", content: ["1","2","3","4"]),myData(list: "10th list", content: ["5","6","7","8"]),myData(list: "11th list", content: ["1","2","3","4"]),myData(list: "12th list", content: ["5","6","7","8"]),myData(list: "13th list", content: ["1","2","3","4"]),myData(list: "14th list", content: ["5","6","7","8"]),myData(list: "15th list", content: ["1","2","3","4"])]

class CollectionViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.sectionHeaderTopPadding = 0
    }

}

//===========================================
//TableViews method
//===========================================

extension CollectionViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! CollectionTableViewCell
        cell.collectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].list
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .secondarySystemBackground
    }
    
    
    
    
    
}
