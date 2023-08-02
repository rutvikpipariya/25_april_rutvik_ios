

import UIKit

class ViewController: UIViewController {

    var tech=[""]
    var sub=[""]
    var img=[UIImage]()
    
    //Section-2
    var newtech=[""]
    var newsub=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        tech=["iOS","Android","React","Flutter","Python","PHP","JAVA","Node"]
        sub=["Apple Inc","Google Inc","Facebook Framework","Cross Platform","Powerfull Language","Open Source","Secure Language","JS Library"]
        img=[#imageLiteral(resourceName: "a"),#imageLiteral(resourceName: "apple-watch-blue-icon"),#imageLiteral(resourceName: "g"),#imageLiteral(resourceName: "e"),#imageLiteral(resourceName: "i"),#imageLiteral(resourceName: "j"),#imageLiteral(resourceName: "b"),#imageLiteral(resourceName: "a")]
        // Do any additional setup after loading the view.
        
        //Section-2
        newtech=["C","C++","DS","C#"]
        newsub=["POP Language","OOP Langugae","Data Structure",".NET Technology"]
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0
        {
            return tech.count
        }
        return newtech.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style:.subtitle, reuseIdentifier: nil)
        if indexPath.section==0
        {
            cell.textLabel?.text=tech[indexPath.row]
            cell.detailTextLabel?.text=sub[indexPath.row]
            cell.imageView?.image=img[indexPath.row]
            cell.accessoryType = .detailButton
        }
        else
        {
            cell.textLabel?.text=newtech[indexPath.row]
            cell.detailTextLabel?.text=newsub[indexPath.row]
            cell.accessoryType = .checkmark
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
    {
        let alert=UIAlertController(title:tech[indexPath.row], message:sub[indexPath.row], preferredStyle: .alert)
        let ok=UIAlertAction(title: "Ok", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section==0
        {
            let nextVC=storyboard?.instantiateViewController(identifier: "nextVC") as! NextViewController
            nextVC.t_str=tech[indexPath.row]
            nextVC.s_str=sub[indexPath.row]
            nextVC.im=img[indexPath.row]
            navigationController?.pushViewController(nextVC, animated: true)
        }
        else
        {
            let nextVC=storyboard?.instantiateViewController(identifier: "nextVC") as! NextViewController
            nextVC.t_str=newtech[indexPath.row]
            nextVC.s_str=newsub[indexPath.row]
            navigationController?.pushViewController(nextVC, animated: true)
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0
        {
            return "            "
        }
        return "             "
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section==0
        {
            return "          "
        }
        return "          "
    }
    
}

