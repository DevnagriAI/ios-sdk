//
//  helper.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit
import SDWebImage
import DevnagriSdk
func getLocalizedString(_ key:String)->String{
    return NSLocalizedString(key, comment: "")
}
extension UIImageView {
    func loadImage(from urlString: String) { 
        guard let url = URL(string: urlString) else { return }
        self.sd_setImage(with: url)
    }
}
