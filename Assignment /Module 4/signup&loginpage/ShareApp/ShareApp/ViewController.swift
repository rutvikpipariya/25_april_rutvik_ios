
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var mytxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_share(_ sender: Any)
    {
        let share=UIActivityViewController(activityItems: [myimg.image!,mytxt.text!], applicationActivities: nil)
        present(share, animated: true, completion: nil)
    }
    
}

