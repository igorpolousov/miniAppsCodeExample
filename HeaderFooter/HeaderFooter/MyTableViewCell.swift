//
//  MyTableViewCell.swift
//  HeaderFooter
//
//  Created by Igor Polousov on 03.04.2021.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var friendName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
