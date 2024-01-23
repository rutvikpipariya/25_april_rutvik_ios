//
//  ImageTableViewCell.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 21/01/24.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var view: UIView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
