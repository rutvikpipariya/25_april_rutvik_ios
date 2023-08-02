

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    
    var t_str=""
    var s_str=""
    var im=UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_title.text=t_str
        lbl_subtitle.text=s_str
        myimg.image=im
    }
    


}
