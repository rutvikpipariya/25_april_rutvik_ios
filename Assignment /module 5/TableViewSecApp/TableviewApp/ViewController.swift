//
//  ViewController.swift
//  TableviewApp
//
//  Created by MAC-RJ on 22/09/22.
//

import UIKit

class ViewController: UIViewController {

    var techdata=[""]
    var tech_disc=[""]
    var img=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        techdata=["iOS","Android","JAVA","Python","PHP","React","Node"]
        tech_disc=["Apple Inc","Google Inc","Sun Microsystem","Trending Language","Open Source","Most Powerfull JS Framework","Powerfull Backend Framework"]
        img=[#imageLiteral(resourceName: "b"),#imageLiteral(resourceName: "e"),#imageLiteral(resourceName: "apple-watch-blue-icon"),#imageLiteral(resourceName: "h"),#imageLiteral(resourceName: "a"),#imageLiteral(resourceName: "j"),#imageLiteral(resourceName: "f")]
    }
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return techdata.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0
        {
            return "     "
        }
        if section==1
        {
            return "       "
        }
        return "         "
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section==0
        {
            return "     "
        }
        if section==1
        {
            return "       "
        }
        return "         "
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell=UITableViewCell(style:.subtitle, reuseIdentifier: nil)
        if indexPath.section==0
        {
            
            cell.textLabel?.text=techdata[indexPath.row]
            cell.detailTextLabel?.text=tech_disc[indexPath.row]
            cell.imageView?.image=img[indexPath.row]
            cell.accessoryType = .detailButton
        }
        if indexPath.section==1
        {
            cell.textLabel?.text=techdata[indexPath.row]
        }
        else
        {
            cell.textLabel?.text=techdata[indexPath.row]
            cell.detailTextLabel?.text=tech_disc[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
    {
        let alert=UIAlertController(title:techdata[indexPath.row], message:tech_disc[indexPath.row], preferredStyle: .alert)
        let ok=UIAlertAction(title: "Ok", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let secondVc=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        secondVc.m_tit=techdata[indexPath.row]
        secondVc.m_disc=tech_disc[indexPath.row]
        secondVc.m_img=img[indexPath.row]
        navigationController?.pushViewController(secondVc, animated: true)
    }
    
    
}
