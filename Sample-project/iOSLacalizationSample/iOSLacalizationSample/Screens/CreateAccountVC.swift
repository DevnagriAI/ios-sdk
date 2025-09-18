
//
//  CreateAccountVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 26/08/25.
//

import UIKit

class CreateAccountVC: UIViewController,UITextFieldDelegate {
 
    @IBOutlet weak var lblCreateYourAccountTitle:UILabel!
    @IBOutlet weak var lblFullName:UILabel!
    @IBOutlet weak var lblEmail:UILabel!
    @IBOutlet weak var lblCreatePassword:UILabel!
    @IBOutlet weak var lblPasswordValidation:UILabel!
     
    @IBOutlet weak var txtFullName:UITextField!
    @IBOutlet weak var txtEmail:UITextField!
    @IBOutlet weak var txtCreatePassword:UITextField!
    
    @IBOutlet weak var buttonCreate:UIButton!
      
    override func viewDidLoad() {
        super.viewDidLoad()
         
        txtFullName.delegate = self
        txtEmail.delegate = self
        txtCreatePassword.delegate = self
        
        self.lblCreateYourAccountTitle.text = getLocalizedString("CreateYourAccount")
        self.lblFullName.text = getLocalizedString("Fullname")
        self.lblEmail.text = getLocalizedString("Email")
        self.lblCreatePassword.text = getLocalizedString("CreatePassword")
        self.lblPasswordValidation.text = getLocalizedString("PasswordValidationMessage")
        
        self.txtFullName.placeholder = getLocalizedString("EnterFullName")
        self.txtEmail.placeholder = getLocalizedString("EnterYourEmail")
        self.txtCreatePassword.placeholder = getLocalizedString("EnterYourPassword")
         
        self.buttonCreate.setTitle(getLocalizedString("Create"), for: .normal)
        
        self.buttonCreate.layer.cornerRadius = 12;

        self.txtFullName.superview?.layer.cornerRadius = 12;
        self.txtEmail.superview?.layer.cornerRadius = 12;
        self.txtCreatePassword.superview?.layer.cornerRadius = 12;
    }
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonCreateAction(_ :UIButton){
        
        if (self.txtFullName.text?.count == 0){
            self.showErrorAlert( message: getLocalizedString("PleaseEnterYourName"))
            return
        }
        
        if (self.txtEmail.text?.count == 0){
            self.showErrorAlert( message: getLocalizedString("PleaseEnterEmail"))
            return
        } 
        setUserName(name: self.txtFullName.text ?? "")
        setEmail(email: self.txtEmail.text ?? "")
        self.navigationController?.pushViewController(UIStoryboard.onboardingVC(), animated:true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

