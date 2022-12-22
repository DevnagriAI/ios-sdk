//
//  TranslationOfStringVC.swift
//  iOSDevnagri_sample
//
//  Created by Vijay Jangid on 22/12/22.
//

import UIKit
  
class TranslationOfStringVC: UIViewController {
    
//    @IBOutlet weak var txtViewOrignal: UITextView!
    @IBOutlet weak var txtViewTranslated: UITextView!
    
 //   var orignalString = ""
    var translatedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Translated Text"
        self.txtViewTranslated.text = self.translatedString
    }
}
 
