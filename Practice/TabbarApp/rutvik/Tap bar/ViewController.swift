import UIKit

class ViewController: UIViewController {

    
    var deta = [""]
    var img  = [UIImage()]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        deta = ["iOS","Python","PHP","Laravel","MongoDB","English","Hindi","Gujrati","Java","C++"]
        img = [UIImage(imageLiteralResourceName: "1"),UIImage(imageLiteralResourceName: "2"),UIImage(imageLiteralResourceName: "3"),UIImage(imageLiteralResourceName: "4"),UIImage(imageLiteralResourceName: "5"),UIImage(imageLiteralResourceName: "6"),UIImage(imageLiteralResourceName: "7"),UIImage(imageLiteralResourceName: "8"),UIImage(imageLiteralResourceName: "9"),UIImage(imageLiteralResourceName: "10")]
        
    }


}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return deta.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = CollectionViewCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img_cell.image=img[indexPath.row]
        cell.lbl_cell.text=deta[indexPath.row]
        return cell
    }
    
    
}
