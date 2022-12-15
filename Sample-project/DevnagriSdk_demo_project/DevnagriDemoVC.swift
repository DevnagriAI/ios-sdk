//
//  DevnagriDemoVC.swift
//  DevnagriSdk_demo_project
//
//  Created by Vijay Jangid on 15/04/22.
//

import UIKit
import DevnagriSdk

class DevnagriDemoVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tblList: UITableView!
    @IBOutlet weak var btnChangeLanguage: UIButton!
    
    private var arrOfKeys:[String] =
    [
        "Udaipur - The City of lakes",
        "Jaipur - The Pink City",
        "Andaman & Nicobar Islands - Blue seas, virgin islands and colonial past",
        "Varanasi - The Spiritual Capital of India",
        "Goa - Beaches, Sunsets and Crazy Nights",
        "Agra - The City of taj manhal, the monument of eternal love"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Refresh subscription details
        //DevnagriSDK.shared.refreshSubscriptionDetail()
        
        DevnagriSDK.shared.getTranslationOfString(sentence: "Hello") { translatedString in
            print("Translated String-->",translatedString)
        }
        
        DevnagriSDK.shared.getTranslationOfStrings(sentences: ["Welcome guys"]) { translatedStrings in
            print("Translated Array -->",translatedStrings)
        }
        
        let dictOfTest = ["red_color":"Red","black_color":"Black"]
        
        DevnagriSDK.shared.getTranslationsOfDictionary(dictionary: dictOfTest) { translatedDict in
            print("Translated Dictionary -->",translatedDict)
        }
   
        
    }
     
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.lblTitle.text = NSLocalizedString("new_two", comment: "")
        self.tblList.reloadData()
    }
    
    @IBAction func btnChangeLanguageClicked(_ sender: UIButton)
    {
        let mainStoryboard = UIStoryboard(name: "Main", bundle:  nil)
        let VC = mainStoryboard.instantiateViewController(withIdentifier: "SupportingLanguageLIstVC") as! SupportingLanguageLIstVC
        
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}

extension DevnagriDemoVC : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        self.arrOfKeys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
          
          let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
         
            let key = self.arrOfKeys[indexPath.row]
            
        cell.textLabel?.text = NSLocalizedString(key, comment: "")
        cell.textLabel?.numberOfLines = 5
        return cell
          
      }
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
 }
