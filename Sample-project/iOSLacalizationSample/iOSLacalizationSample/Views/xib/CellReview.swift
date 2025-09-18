//
//  CellReview.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit

class CellReview: UITableViewCell {

    @IBOutlet weak var lblUserName:UILabel!
    @IBOutlet weak var lblReview:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
