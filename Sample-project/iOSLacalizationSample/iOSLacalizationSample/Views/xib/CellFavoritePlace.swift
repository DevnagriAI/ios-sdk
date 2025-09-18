//
//  CellFavoritePlace.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit

class CellFavoritePlace: UICollectionViewCell {

    @IBOutlet weak var viewContainer:UIView!
    @IBOutlet weak var lblCountry:UILabel!
    @IBOutlet weak var lblPlace:UILabel!
    @IBOutlet weak var imgThumbnail:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContainer.layer.cornerRadius = 12
        viewContainer.clipsToBounds = true
        // Initialization code
    }

}
