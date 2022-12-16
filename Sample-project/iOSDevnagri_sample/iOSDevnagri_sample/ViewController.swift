//
//  ViewController.swift
//  iOSDevnagri_sample
//
//  Created by Vijay Jangid on 29/11/22.
//

import UIKit
import DevnagriSdk


class ViewController: UIViewController {

    @IBOutlet weak var tblList: UITableView!
    private let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblList.register(UINib(nibName: "TableListCell", bundle: nil), forCellReuseIdentifier: "TableListCell")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = NSLocalizedString("home_title", comment: "")
        self.tblList.reloadData()
    }
    
    @IBAction func btnSDKMethods(_ sender: UIButton) {
//        self.testString()
//        self.testWithArrayString()
//        self.testWithDictionary()
        self.testWithJson()
    }
    
    @IBAction func btnReloadClicked(_ sender: UIButton) {
//        self.reloadInputViews()
//        self.view.setNeedsLayout()
//        parent?.addSubview(view!)
//        self.setNeedsLayout()
        let window = UIApplication.shared.keyWindow
    }
    
    private func testString(){
        DevnagriSDK.shared.getTranslationOfString(sentence: self.dataSource.strStringToTranslate) { translatedString in
            print("TranslatedString",translatedString)
        }
    }
    
    private func testWithArrayString(){
        DevnagriSDK.shared.getTranslationOfStrings(sentences: self.dataSource.arrStringToTranslate) { translationStrings in
            print("translationStrings",translationStrings)
        }
    }
    
    private func testWithDictionary(){
        DevnagriSDK.shared.getTranslationsOfDictionary(dictionary: self.dataSource.dictionaryToTranslate) { translatedDictionary in
            print("translatedDictionary",translatedDictionary)
        }
    }
    
    private func testWithJson(){
        
        if let dummyJson:NSDictionary = self.dataSource.getJson(fileName: "response") {
            
            
            DevnagriSDK.shared.getTranslationOfDictionary(dict: dummyJson, igonreKeys: []) { translatedJson in
                print("translatedDictionary",translatedJson)
                
                
                
            }
        }
        
    }
    
    @IBAction func btnChangeLanguageClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SupportingLanguageVC") as! SupportingLanguageVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.arrTouristPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableListCell = self.tblList.dequeueReusableCell(withIdentifier: "TableListCell", for: indexPath) as! TableListCell
        
        let dictionary = self.dataSource.arrTouristPlaces[indexPath.row]
        cell.lblTitle.text = NSLocalizedString(dictionary.name, comment: "NOTFOUND")
        cell.lblSubtitle.text = NSLocalizedString(dictionary.location, comment: "NOTFOUND")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
 }

