//
//  TableViewCell.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 17/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var person_img: UIImageView!
    
    @IBOutlet weak var lbl_first: UILabel!
    
    @IBOutlet weak var lbl_bold: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
