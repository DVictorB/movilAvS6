//
//  CarTableViewCell.swift
//  movilAvS6
//
//  Created by Mac14 on 20/04/24.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgProfile: UIImageView!
    
    
    @IBOutlet weak var imgPost: UIImageView!
    
    
    @IBOutlet weak var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
