//
//  SecondViewController.swift
//  TableviewApp
//
//  Created by MAC-RJ on 22/09/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_disc: UILabel!
    
    var m_img=UIImage()
    var m_tit=""
    var m_disc=""
    override func viewDidLoad() {
        super.viewDidLoad()

        myimg.image=m_img
        lbl_title.text=m_tit
        lbl_disc.text=m_disc
        // Do any additional setup after loading the view.
    }
    


}
