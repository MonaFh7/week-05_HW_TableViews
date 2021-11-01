//
//  TableViewCellMine.swift
//  week5
//
//  Created by Monafh on 26/03/1443 AH.
//

import UIKit

class TableViewCellMine: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImage.layer.cornerRadius = 12
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
