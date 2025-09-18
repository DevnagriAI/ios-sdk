//
//  CellPopularResort.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit

class CellPopularResort: UITableViewCell {

    @IBOutlet weak var lblResortName:UILabel!
    @IBOutlet weak var lblResortDescription:UILabel!
    @IBOutlet weak var buttonLike:UIButton!
    @IBOutlet weak var lblPrice:UILabel!
    @IBOutlet weak var lblRating:UILabel!
    @IBOutlet weak var imgThumbnail:UIImageView!
     
    var onLikeButtonClicked: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgThumbnail.layer.cornerRadius = 12
        buttonLike.layer.cornerRadius = buttonLike.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func buttonLikeAction(_ :UIButton){
        self.onLikeButtonClicked!()
    }
    
}
