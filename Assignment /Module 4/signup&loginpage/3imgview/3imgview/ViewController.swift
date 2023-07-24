//
//  ViewController.swift
//  3imgview
//
//  Created by MAC2 on 02/05/1945 Saka.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var view2: UIImageView!
    @IBOutlet weak var view3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn1(_ sender: Any) {
    
        let photo1 = UIImagePickerController()
        photo1.delegate=self
        present(photo1, animated: true, completion:nil)
    }
    
    @IBAction func btn2(_ sender: Any) {
        
        let photo2 = UIImagePickerController()
        photo2.delegate=self
        present(photo2, animated: true, completion:nil)
    }
    
    @IBAction func btn3(_ sender: Any) {
        let photo3 = UIImagePickerController()
        photo3.delegate=self
        present(photo3, animated: true, completion:nil)
        
    }
    
}
extension ViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickimage = info[.originalImage] as? UIImage{
            if view1.image == nil{
                view1.image = pickimage
            }else if view2.image == nil{
                view2.image = pickimage
            }else if view3.image == nil{
                view3.image = pickimage
            }
        }
        dismiss(animated: true, completion: nil)
    }
   
}
