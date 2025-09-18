
//
//  ForgotPasswordVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 25/08/25.
//

import UIKit

class ForgotPasswordVC: UIViewController,UITextFieldDelegate {
 
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    @IBOutlet weak var lblEmailTitle:UILabel!
    @IBOutlet weak var txtEmail:UITextField!
    @IBOutlet weak var buttonSubmit:UIButton!
     
    override func viewDidLoad() {
        super.viewDidLoad() 
        self.lblTitle.text = getLocalizedString("InputYourEmail")
        self.lblSubtitle.text = getLocalizedString("ForgotYourPassword")
        self.lblEmailTitle.text = getLocalizedString("Email")
        self.txtEmail.placeholder = getLocalizedString("EnterEmail")
        self.txtEmail.delegate = self
        self.buttonSubmit.setTitle(getLocalizedString("submit"), for: .normal)
        self.txtEmail.superview?.layer.cornerRadius = 12
        self.buttonSubmit.layer.cornerRadius = 12
    }
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonSubmitAction(_ :UIButton){
        
        if (self.txtEmail.text?.count == 0){
            self.showErrorAlert(message: getLocalizedString("PleaseEnterEmail"))
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

