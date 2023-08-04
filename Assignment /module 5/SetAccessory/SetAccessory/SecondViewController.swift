
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var lbl_tech: UILabel!
    @IBOutlet weak var lbl_sub: UILabel!
    
    var strimg=UIImage()
    var strtech=""
    var strsub=""
    override func viewDidLoad() {
        super.viewDidLoad()

        myimg.image=strimg
        lbl_tech.text=strtech
        lbl_sub.text=strsub
        
    }
    

}
