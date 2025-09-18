
//
//  SettingVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit
import DevnagriSdk

class SettingVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collLanguages:UICollectionView!
    @IBOutlet weak var lblChangeLang:UILabel!
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblCurrentLangTitle:UILabel!
    @IBOutlet weak var lblPushnotification:UILabel!
    @IBOutlet weak var lblCurrentLanguage:UILabel!
    @IBOutlet weak var activityIndicatorView:UIActivityIndicatorView!
    
    @IBOutlet weak var lblPrivacyPolicy:UILabel!
    @IBOutlet weak var lblTermsCondition:UILabel!
    @IBOutlet weak var lblContactUs:UILabel!
    @IBOutlet weak var lblLogout:UILabel!
     
    private var arrOfLanguages:[DevnagriSupportingLanguageItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicatorView.isHidden = true
        self.collLanguages.delegate = self
        self.collLanguages.dataSource = self
        self.collLanguages.register(UINib(nibName: "CellCategory", bundle: nil), forCellWithReuseIdentifier: "CellCategory")
        
        self.lblCurrentLanguage.text = DevnagriSDK.shared.getCurrentApplicationLanguageCode()
        
        DevnagriSDK.shared.getAllSupportableLanguages { arrSupportableLanguages in
            self.arrOfLanguages = arrSupportableLanguages
            self.collLanguages.reloadData()
        }
        
        self.lblLogout.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
        self.lblLogout.addGestureRecognizer(tapGesture)
         
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.localizedLanguages()
    }
     
    @objc func labelTapped() {
        let logoutVC = UIStoryboard.logoutVC()
        logoutVC.modalPresentationStyle = .overFullScreen
        self.navigationController?.present(logoutVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfLanguages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CellCategory = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCategory", for: indexPath) as! CellCategory
        
        cell.lblTitle.text = "\(arrOfLanguages[indexPath.item].language) (\(arrOfLanguages[indexPath.item].languageCode))"
        cell.viewContainer.layer.borderWidth = 0
        if (self.lblCurrentLanguage.text == arrOfLanguages[indexPath.item].languageCode){
            cell.viewContainer.layer.borderWidth = 1
            cell.viewContainer.layer.borderColor = UIColor.black.cgColor
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let code = arrOfLanguages[indexPath.item].languageCode
        self.activityIndicatorView.isHidden = false
        self.activityIndicatorView.startAnimating()
        DevnagriSDK.shared.updateAppLocale(code: code) { isUpdated, message in
            self.activityIndicatorView.stopAnimating()
            self.activityIndicatorView.isHidden = true
            self.lblCurrentLanguage.text = DevnagriSDK.shared.getCurrentApplicationLanguageCode()
            self.localizedLanguages()
            self.collLanguages.reloadData()
        }
    }
    private func localizedLanguages(){
        self.lblTitle.text = getLocalizedString("Settings")
        self.lblPushnotification.text = getLocalizedString("Pushnotification")
        self.lblChangeLang.text = getLocalizedString("changeLanguage")
        self.lblCurrentLangTitle.text = getLocalizedString("CurrentLanguage")
        
        self.lblPrivacyPolicy.text = getLocalizedString("PrivacyPolicy")
        self.lblTermsCondition.text = getLocalizedString("TermsCondition")
        self.lblContactUs.text = getLocalizedString("ContactUs")
        self.lblLogout.text = getLocalizedString("Logout")
    }
    
    
}

