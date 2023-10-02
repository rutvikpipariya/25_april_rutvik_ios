//
//  TableViewCell.swift
//  API_MVC_AlmoSwifty
//
//  Created by Rutvik Pipaliya on 02/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cn_image: UIImageView!
    @IBOutlet weak var cn_name: UILabel!
    @IBOutlet weak var cn_capital: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
