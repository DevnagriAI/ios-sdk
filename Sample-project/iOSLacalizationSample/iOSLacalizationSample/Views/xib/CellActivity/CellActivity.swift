//
//  CellActivity.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit

class CellActivity: UICollectionViewCell {
    @IBOutlet weak var lblActivity:UILabel!
    @IBOutlet weak var viewContainer:UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.lblActivity.textColor = .white.withAlphaComponent(0.8)
        self.viewContainer.layer.borderColor = UIColor.white.withAlphaComponent(0.8).cgColor
        self.viewContainer.layer.borderWidth = 1
        self.viewContainer.layer.cornerRadius = 12
    }

}
