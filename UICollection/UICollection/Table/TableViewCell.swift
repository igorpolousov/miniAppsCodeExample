//
//  TableViewCell.swift
//  UICollection
//
//  Created by Igor Polousov on 14.03.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nutty: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
