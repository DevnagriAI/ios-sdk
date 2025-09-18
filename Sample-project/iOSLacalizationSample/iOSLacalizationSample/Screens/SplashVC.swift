
//
//  ViewController.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class SplashVC: UIViewController {
 
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblTitle.text = getLocalizedString("Travista")
        self.lblSubtitle.text = getLocalizedString("SplashMessage")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.navigationController?.pushViewController(UIStoryboard.loginVC(), animated:true)
        })
    }
}

