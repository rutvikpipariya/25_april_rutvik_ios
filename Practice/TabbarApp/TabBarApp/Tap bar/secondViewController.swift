import UIKit

class secondViewController: UIViewController {

    
    var deta = [""]
    var img  = [UIImage()]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        deta = ["iOS","Python","PHP","Laravel","MongoDB","English","Hindi","Gujrati","Java","C++"]
        img = [UIImage(imageLiteralResourceName: "1"),UIImage(imageLiteralResourceName: "2"),UIImage(imageLiteralResourceName: "3"),UIImage(imageLiteralResourceName: "4"),UIImage(imageLiteralResourceName: "5"),UIImage(imageLiteralResourceName: "6"),UIImage(imageLiteralResourceName: "7"),UIImage(imageLiteralResourceName: "8"),UIImage(imageLiteralResourceName: "9"),UIImage(imageLiteralResourceName: "10")]
        
    }
    


}

extension secondViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = TableViewCell()
       cell = tableView.dequeueReusableCell(withIdentifier: "celll") as! TableViewCell
        cell.img_cell.image=img[indexPath.row]
        cell.lbl_cell.text=deta[indexPath.row]
        return cell
    }
    
    
}
