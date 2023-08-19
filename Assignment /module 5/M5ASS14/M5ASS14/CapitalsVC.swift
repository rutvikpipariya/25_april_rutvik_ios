
import Foundation
import UIKit


class CapitalsVC: UIViewController {
    
    
    @IBOutlet weak var lblCapitals: UILabel!
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblCapitals.text = data
        
    }
    
}
