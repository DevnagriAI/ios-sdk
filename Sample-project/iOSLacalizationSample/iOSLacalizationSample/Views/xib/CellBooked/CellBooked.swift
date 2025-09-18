//
//  CellBooked.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 26/08/25.
//

import UIKit

class CellBooked: UITableViewCell {

    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    @IBOutlet weak var lblPrice:UILabel!
    @IBOutlet weak var lblCreatedAt:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
