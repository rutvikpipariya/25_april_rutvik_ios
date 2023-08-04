
import UIKit

class ViewController: UIViewController {

    var tech=[""]
    var sub=[""]
    var img=[UIImage]()
    
    //Section-2
    var sec_title=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        tech=["iOS","Android","JAVA","PHP","Angular","React"]
        sub=["Apple Inc","Google Inc","Sun Microsystem","Open Source","JS Framework","Most Powerfull JS FRamework"]
        img=[#imageLiteral(resourceName: "h"),#imageLiteral(resourceName: "b"),#imageLiteral(resourceName: "i"),#imageLiteral(resourceName: "d"),#imageLiteral(resourceName: "a"),#imageLiteral(resourceName: "apple-watch-blue-icon")]
        
        //Section-2
        sec_title=["Ahmedabad","Rajkot","Baroda","Surat","Jamnagar"]
    }

}

extension ViewController:UITableViewDataSource, UITableViewDelegate
{
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0
        {
            return "                   "
        }
        return "                    "
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
    {
        if section==0
        {
            return "                   "
        }
        return "                    "
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return tech.count
        if section==0
        {
            return tech.count
        }
        return sec_title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell=UITableViewCell(style:.subtitle, reuseIdentifier: nil)
        if indexPath.section==0
        {
            cell.textLabel?.text=tech[indexPath.row]
            cell.detailTextLabel?.text=sub[indexPath.row]
            cell.imageView?.image=img[indexPath.row]
            cell.accessoryType = .detailButton
            
            //cell.backgroundColor = .clear
            cell.layer.masksToBounds = false
            cell.layer.shadowOpacity = 0.23
            cell.layer.shadowRadius = 4
            cell.layer.shadowOffset = CGSize(width: 0, height: 0)
            cell.layer.shadowColor = UIColor.black.cgColor

            // add corner radius on `contentView`
            cell.contentView.backgroundColor = .white
            cell.contentView.layer.cornerRadius = 8
            
            return cell
        }
        else
        {
            cell.textLabel?.text=sec_title[indexPath.row]
            cell.accessoryType = .checkmark
            return cell
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.section==0
        {
            let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
            secondVC.strimg=img[indexPath.row]
            secondVC.strtech=tech[indexPath.row]
            secondVC.strsub=sub[indexPath.row]
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if indexPath.section==0
        {
            if editingStyle == .delete
            {
                tech.remove(at: indexPath.row)
                sub.remove(at: indexPath.row)
                img.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        if indexPath.section==0
        {
            let btn1=UITableViewRowAction(style: .default, title: "Add") { (btn_add, indexpath) in
                
                print("Button Add Clciked!")
                let alert=UIAlertController(title: "Add", message: "Please add your items!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "Cancel", style: .default, handler: nil)
                let more=UIAlertAction(title: "Add", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                self.present(alert, animated: true, completion: nil)
            }
            btn1.backgroundColor=UIColor.purple
            let btn2=UITableViewRowAction(style: .normal, title: "Update") { (btn_update, indexpath) in
                
                print("Button Update Clciked!")
            }
            let btn3=UITableViewRowAction(style: .destructive, title: "Delete") { (btn_delete, indexpath) in
                
                print("Button Delete Clciked!")
            }
            return [btn1,btn2,btn3]
        }
        return nil
       
        
    }
    
}
