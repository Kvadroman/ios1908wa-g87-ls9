//
//  groupTableViewCell.swift
//  ios1908wa-g87-ls9
//
//  Created by Ивченко Антон on 25.09.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var namePersonLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
