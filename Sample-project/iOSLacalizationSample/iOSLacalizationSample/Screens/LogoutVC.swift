
//
//  LogoutVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 26/08/25.
//

import UIKit

class LogoutVC: UIViewController {
 
    
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    
    @IBOutlet weak var buttonLogout:UIButton!
    @IBOutlet weak var buttonCancel:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblTitle.text = getLocalizedString("Logout")
        self.lblSubtitle.text = getLocalizedString("AreYouSureYouWantToLogout")
        self.buttonLogout.setTitle(self.lblTitle.text, for: .normal)
        self.buttonCancel.setTitle(getLocalizedString("Cancel"), for: .normal)
        
        self.buttonLogout.addTarget(self, action: #selector(buttonLogoutAction), for: .touchUpInside)
        self.buttonCancel.addTarget(self, action: #selector(buttonCancelAction), for: .touchUpInside)
        
        self.buttonLogout.layer.cornerRadius = 12
        self.buttonCancel.layer.cornerRadius = 12
    }
    
    @objc func buttonLogoutAction(_ button:UIButton){
        self.setRootVC(UIStoryboard.loginVC()) 
    }
    
    @objc func buttonCancelAction(_ button:UIButton){
        self.dismiss(animated: true)
    }
    
}

