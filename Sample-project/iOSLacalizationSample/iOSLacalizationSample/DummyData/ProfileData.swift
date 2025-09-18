//
//  ProfileData.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 26/08/25.
//

import UIKit
func setUserName(name:String){
    UserDefaults.standard.setValue(name, forKey: "UserFullName")
    UserDefaults.standard.synchronize()
}

func setEmail(email:String){
    UserDefaults.standard.setValue(email, forKey: "UserEmail")
    UserDefaults.standard.synchronize()
}


func getUserName(name:String)-> String{
    return UserDefaults.standard.value(forKey: "UserFullName") as? String ?? ""
}

func getUserEmail(email:String)->String{
    return UserDefaults.standard.value(forKey: "UserEmail") as? String ?? ""
    
}
