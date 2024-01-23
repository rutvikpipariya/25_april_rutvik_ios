//
//  TextTableViewCell.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 21/01/24.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //===========================================
    //Outlets
    //===========================================

    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var profilePhoto: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
