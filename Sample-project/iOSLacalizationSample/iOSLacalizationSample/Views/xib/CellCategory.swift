//
//  CellCategory.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class CellCategory: UICollectionViewCell {
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var viewContainer:UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContainer.layer.cornerRadius = 12
        // Initialization code
    }

}
