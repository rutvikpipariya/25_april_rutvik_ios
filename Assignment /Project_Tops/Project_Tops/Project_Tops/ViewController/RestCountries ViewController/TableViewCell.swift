//
//  TableViewCell.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    //===========================================
    //Outlets
    //===========================================
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var capitalName: UILabel!
    @IBOutlet weak var uiView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        uiView.layer.cornerRadius = 20
        uiView.layer.shadowColor = UIColor.black.cgColor
        uiView.layer.shadowOpacity = 0.5
        uiView.layer.shadowOffset = CGSize(width: 0, height: 2)
        uiView.layer.shadowRadius = 5 // Set your desired shadow radius
        uiView.layer.masksToBounds = false

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

