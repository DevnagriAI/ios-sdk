//
//  SupportingLanguageVC.swift
//  iOSDevnagri_sample
//
//  Created by Vijay Jangid on 14/12/22.
//

import UIKit
import DevnagriSdk

class SupportingLanguageVC: UIViewController {
    
    @IBOutlet weak var tblList: UITableView!
    @IBOutlet weak var activityLoader: UIActivityIndicatorView!
    private var arrOfSupportingLang : [DevnagriSupportingLanguageItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Supporting Language"
        self.activityLoader.hidesWhenStopped = true
        self.tblList.register(UINib(nibName: "TableListCell", bundle: nil), forCellReuseIdentifier: "TableListCell")
        DevnagriSDK.shared.getAllSupportableLanguages { arrList in
            self.arrOfSupportingLang = arrList
            self.tblList.reloadData()
        }
    }
   
}
extension SupportingLanguageVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfSupportingLang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableListCell = self.tblList.dequeueReusableCell(withIdentifier: "TableListCell", for: indexPath) as! TableListCell
        
        let item = self.arrOfSupportingLang[indexPath.row]
        cell.lblTitle.text = "\(indexPath.row + 1 ). \(item.language)"
        cell.lblSubtitle.text = "  " + item.languageCode
        
        cell.lblTitle.textColor = .black
        if item.languageCode == DevnagriSDK.shared.getCurrentApplicationLanguageCode(){
            cell.lblTitle.textColor = .blue
        }
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item = self.arrOfSupportingLang[indexPath.row]
        self.title = "Supporting Language"
        self.activityLoader.startAnimating()
        let startTime = Date()
        DevnagriSDK.shared.updateAppLocale(code: item.languageCode) { isUpdated, message in
            
            let diffrence = Date().timeIntervalSince1970 - startTime.timeIntervalSince1970
            print("Updated App Locale in just \(String(format: "%.2f", diffrence)) sec" )
            self.activityLoader.stopAnimating()
            self.navigationController?.popViewController(animated: true)
            
        }
    }
    
 }
