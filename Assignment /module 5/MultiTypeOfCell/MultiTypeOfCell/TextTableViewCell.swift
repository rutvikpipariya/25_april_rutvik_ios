//
//  TextTableViewCell.swift
//  MultiTypeOfCell
//
//  Created by JADEJA PARIKSHITSINH on 06/08/23.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

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
