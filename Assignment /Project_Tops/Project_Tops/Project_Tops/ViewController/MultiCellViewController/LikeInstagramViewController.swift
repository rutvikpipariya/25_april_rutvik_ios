//
//  LikeInstagramViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 21/01/24.
//

import UIKit

class LikeInstagramViewController: UIViewController {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .black
        self.navBar.barTintColor = .black
        
        self.table.register(UINib.init(nibName: "TextTableViewCell", bundle: .main), forCellReuseIdentifier: "TextTableViewCell")
        
        self.table.register(UINib.init(nibName: "ImageTableViewCell", bundle: .main), forCellReuseIdentifier: "ImageTableViewCell")
    }

}

//===========================================
//TableViews Method
//===========================================

extension LikeInstagramViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 5 || indexPath.row == 7 || indexPath.row == 9)
        {
            let cell:TextTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TextTableViewCell", for: indexPath) as! TextTableViewCell
            cell.selectionStyle = .none
            cell.view.layer.cornerRadius = 10
            cell.view.clipsToBounds = true
            cell.profilePhoto.layer.cornerRadius = 20
            cell.profilePhoto.clipsToBounds = true
            return cell
        }
        else
        {
            let cell:ImageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
            cell.selectionStyle = .none
            cell.view.layer.cornerRadius = 10
            cell.view.clipsToBounds = true
            cell.profilePic.layer.cornerRadius = 20
            cell.profilePic.clipsToBounds = true
            return cell
        }
    }
}
