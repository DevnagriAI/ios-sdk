//
//  UIStoryboard+Additions.swift
//  TikTop
//
//  Created by TARUNPUROHIT on 16/04/20.
//  Copyright © 2020 Bark Systems, LLC. All rights reserved.
//


import UIKit
 

extension UIStoryboard
{
    //MARK:  Storyboard Methods
    class func mainStoryBoard() -> UIStoryboard
      {
          return UIStoryboard(name: "Main", bundle:  nil)
      }
    
    class func onboardingVC() -> OnboardingVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "OnboardingVC") as! OnboardingVC
    }
    
    class func homeVC() -> HomeVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
    }
    
    class func favoritePlaceDetailsVC() -> FavoritePlaceDetailsVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "FavoritePlaceDetailsVC") as! FavoritePlaceDetailsVC
    }
    
    class func userReviewVC() -> UserReviewVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "UserReviewVC") as! UserReviewVC
    }
    
    class func settingVC() -> SettingVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "SettingVC") as! SettingVC
    }
    
    class func allResortsVC() -> AllResortsVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "AllResortsVC") as! AllResortsVC
    }
    
    class func notificationVC() -> NotificationVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "NotificationVC") as! NotificationVC
    }
    
    class func loginVC() -> LoginVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
    }
    
    class func tabBarController() -> TabBarController
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
    }
    
    class func categoryVC() -> CategoryVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "CategoryVC") as! CategoryVC
    }
    class func bookingVC() -> BookingVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "BookingVC") as! BookingVC
    }
    
    class func forgotPasswordVC() -> ForgotPasswordVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "ForgotPasswordVC") as! ForgotPasswordVC
    }
    class func bookingSuccesfullVC() -> BookingSuccesfullVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "BookingSuccesfullVC") as! BookingSuccesfullVC
    }
    
    class func createAccountVC() -> CreateAccountVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "CreateAccountVC") as! CreateAccountVC
    }
    class func logoutVC() -> LogoutVC
    {
        return mainStoryBoard().instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
    }
    
    
}

extension UIViewController{
    func setRootVC(_ vc:UIViewController!){
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationBar.isHidden = true
        nav.interactivePopGestureRecognizer?.isEnabled = false
        
        UIApplication.shared.windows.first?.rootViewController = nav
    }
    func showErrorAlert(title:String? = "Error",message: String) {
        let alert = UIAlertController(title: getLocalizedString(title ?? "Error"),
                                      message: message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
