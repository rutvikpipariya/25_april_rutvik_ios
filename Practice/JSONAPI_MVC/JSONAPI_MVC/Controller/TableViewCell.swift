//
//  TableViewCell.swift
//  JSONAPI_MVC
//
//  Created by Rutvik Pipaliya on 20/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_capital: UILabel!
    @IBOutlet weak var lbl_region: UILabel!
    @IBOutlet weak var lbl_subregion: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
