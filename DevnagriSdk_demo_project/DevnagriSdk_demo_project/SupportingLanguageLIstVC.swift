//
//  SupportingLanguageLIstVC.swift
//  DevnagriSdk_demo_project
//
//  Created by Vijay Jangid on 15/04/22.
//

import UIKit
import DevnagriSdk

class SupportingLanguageLIstVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tblSupportingLanguageList: UITableView!
    @IBOutlet weak var btnDone: UIButton!
    
    private var arrOfSupportingLangauge:[DevnagriSupportingLanguageItem] = []
    private var selectedLanguageCode:String = ""
     
    var actionHandler:(() -> Void)? = nil
     
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.selectedLanguageCode = DevnagriSDK.shared.getCurrentApplicationLanguageCode()
         
        DevnagriSDK.shared.getAllSupportableLanguages { arrOfSupportingLangauge in
            
            self.arrOfSupportingLangauge = arrOfSupportingLangauge
            self.tblSupportingLanguageList.reloadData()
         }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDoneClicked(_ sender: UIButton)
    {
        if self.selectedLanguageCode != ""
        {
            DevnagriSDK.shared.updateAppLocale(code: self.selectedLanguageCode)
            self.navigationController?.popViewController(animated: true)
        }
        else
        {
            let alert = UIAlertController(title: "Devnagri Demo", message: "Select Supporting language first", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(action)
            
            self.navigationController?.present(alert, animated: true, completion: nil)
         }
    }
    
    @IBAction func btnCancelClicked(_ sender: UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }
      
}


extension SupportingLanguageLIstVC : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrOfSupportingLangauge.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = self.arrOfSupportingLangauge[indexPath.row]
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
         
        cell.textLabel?.text = item.language
        cell.textLabel?.numberOfLines = 5
        cell.detailTextLabel?.text = item.languageCode
        
        if item.languageCode == self.selectedLanguageCode
        {
            cell.contentView.backgroundColor = .green
        }
        else
        {
            cell.contentView.backgroundColor = .clear
        }
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedLanguageCode = self.arrOfSupportingLangauge[indexPath.row].languageCode
        self.tblSupportingLanguageList.reloadData()
        self.actionHandler?()
    }
 }
