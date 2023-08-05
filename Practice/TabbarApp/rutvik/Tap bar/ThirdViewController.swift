import UIKit

class ThirdViewController: UIViewController {

    var deta = [""]
    var img = [UIImage()]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        deta = ["iOS","Python","PHP","Laravel","MongoDB","English","Hindi","Gujrati","Java","C++"]
        img = [UIImage(imageLiteralResourceName: "1"),UIImage(imageLiteralResourceName: "2"),UIImage(imageLiteralResourceName: "3"),UIImage(imageLiteralResourceName: "4"),UIImage(imageLiteralResourceName: "5"),UIImage(imageLiteralResourceName: "6"),UIImage(imageLiteralResourceName: "7"),UIImage(imageLiteralResourceName: "8"),UIImage(imageLiteralResourceName: "9"),UIImage(imageLiteralResourceName: "10")]
    }
    


}

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text=deta[indexPath.row]
        cell.imageView?.image=img[indexPath.row]
        return cell
    }
    
    
}
