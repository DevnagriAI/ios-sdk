
//
//  ViewController.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class LoginVC: UIViewController,UITextFieldDelegate {
 
    @IBOutlet weak var lblTitle:UILabel!
    
    @IBOutlet weak var lblEmail:UILabel!
    @IBOutlet weak var lblPassword:UILabel!
    
    @IBOutlet weak var viewEmail:UIView!
    @IBOutlet weak var viewPassword:UIView!
    
    @IBOutlet weak var txtEmail:UITextField!
    @IBOutlet weak var txtPassword:UITextField!
    
    @IBOutlet weak var buttonCreateAccount:UIButton!
    @IBOutlet weak var buttonSignIn:UIButton!
    @IBOutlet weak var buttonForgotPassword:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewEmail.layer.cornerRadius = 12
        self.viewPassword.layer.cornerRadius = 12
        self.buttonSignIn.layer.cornerRadius = 12
        
        self.lblTitle.text = getLocalizedString("SignIn")
        self.lblEmail.text = getLocalizedString("Email")
        self.lblPassword.text = getLocalizedString("Password")
        
        self.txtEmail.placeholder = getLocalizedString("EnterEmail")
        self.txtEmail.delegate = self
        self.txtPassword.placeholder = getLocalizedString("EnterPassword")
        self.txtPassword.delegate = self
        
        self.buttonCreateAccount.layer.cornerRadius = 12
        self.buttonCreateAccount.layer.borderWidth = 1
        self.buttonCreateAccount.layer.borderColor = UIColor.black.cgColor
        
        self.buttonCreateAccount.setTitle(getLocalizedString("CreateAccount"), for: .normal)
        self.buttonSignIn.setTitle(getLocalizedString("SignIn"), for: .normal)
        self.buttonForgotPassword.setTitle(getLocalizedString("ForgotPassword"), for: .normal)
        
    }
    
    @IBAction func buttonCreateAccountAction(_ :UIButton){
        self.navigationController?.pushViewController(UIStoryboard.createAccountVC(), animated:true)
    }
    
    @IBAction func buttonSignInAction(_ :UIButton){
        
//        if (self.txtEmail.text?.count == 0){
//            self.showErrorAlert( message: getLocalizedString("PleaseEnterEmail"))
//            return
//        }
//        
//        if (self.txtPassword.text?.count == 0){
//            self.showErrorAlert( message: getLocalizedString("PleaseEnterPassword"))
//            return
//        }
        
        self.navigationController?.pushViewController(UIStoryboard.onboardingVC(), animated:true)
    }
    
    @IBAction func buttonForgotPasswordAction(_ :UIButton){
        self.navigationController?.pushViewController(UIStoryboard.forgotPasswordVC(), animated:true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

