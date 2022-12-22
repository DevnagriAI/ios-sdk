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
        
        let alertController = UIAlertController(title: "Translation", message: "", preferredStyle: .actionSheet)
        
        let actionString = UIAlertAction(title: "To String", style: .default) { action in
            self.testString()
        }
        let actionStrings = UIAlertAction(title: "To Strings", style: .default) { action in
            self.testWithArrayString()
        }
        let actionDictionary = UIAlertAction(title: "To Dictionary", style: .default) { action in
            self.testWithDictionary()
        }
        let actionJson = UIAlertAction(title: "To Json", style: .default) { action in
            self.testWithJson()
        }
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(actionString)
        alertController.addAction(actionStrings)
        alertController.addAction(actionDictionary)
        alertController.addAction(actionJson)
        alertController.addAction(actionCancel)
        
        
        self.present(alertController, animated: true, completion: nil)
    }
     
    private func testString(){
        DevnagriSDK.shared.getTranslationOfString(sentence: self.dataSource.strStringToTranslate) { translatedString in
            print("translationString",translatedString)
            self.showingTranslatedText(text: translatedString)
        }
    }
    
    private func testWithArrayString(){
        DevnagriSDK.shared.getTranslationOfStrings(sentences: self.dataSource.arrStringToTranslate) { translationStrings in
            print("translationStrings",translationStrings)
            self.showingTranslatedText(text: "\(translationStrings.joined(separator: "\n"))")
        }
    }
    
    private func testWithDictionary(){
        DevnagriSDK.shared.getTranslationsOfDictionary(dictionary:self.dataSource.dictionaryToTranslate ) { translatedDictionary in
            print("translatedDictionary",translatedDictionary)
            var strings = ""
            for dict in translatedDictionary{
                strings.append("\(dict.key) : \(dict.value)\n")
            }
            self.showingTranslatedText(text: "\(strings)")
        }
    }
    
    private func testWithJson(){
        
        if let dummyJson:NSDictionary = self.dataSource.getJson(fileName: "response") {
            DevnagriSDK.shared.getTranslationOfDictionary(dict: dummyJson, igonreKeys: []) { translatedJson in
                print("translatedDictionary",translatedJson)
                self.showingTranslatedText(text: translatedJson as? String ?? "")
            }
        }
    }
    
    @IBAction func btnChangeLanguageClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SupportingLanguageVC") as! SupportingLanguageVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func showingTranslatedText(text:String){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TranslationOfStringVC") as! TranslationOfStringVC
        vc.translatedString = text
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

