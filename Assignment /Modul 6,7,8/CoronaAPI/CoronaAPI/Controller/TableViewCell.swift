//
//  TableViewCell.swift
//  CoronaAPI
//
//  Created by Rutvik Pipaliya on 22/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lb_state_name: UILabel!    
    @IBOutlet weak var lb_Active_Case: UILabel!
    @IBOutlet weak var lb_recovered: UILabel!
    @IBOutlet weak var lb_code: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension SecondViewController {
    
}
