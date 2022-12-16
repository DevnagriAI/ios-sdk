//
//  DataSource.swift
//  iOSDevnagri_sample
//
//  Created by Vijay Jangid on 16/12/22.
//

import Foundation

class DataSource{
    
    var arrTouristPlaces:[TouristPlaceModel] = [
        TouristPlaceModel(name: "Taj Mahal", location: "It is situated on the banks of River Yamuna in Agra, Uttar Pradesh."),
        TouristPlaceModel(name:"Hawa Mahal", location: "The Hawa Mahal is a palace in the city of Jaipur, Rajasthan."),
        TouristPlaceModel(name:"Qutb Minar", location: "The Qutb Minar complexes are monuments and buildings from the Delhi Sultanate at Mehrauli in Delhi, India."),
        TouristPlaceModel(name:"Jim Corbett National Park", location: "Ramnagar, Uttarakhand."),
        TouristPlaceModel(name:"Harmandir Sahib", location: "Amritsar, Punjab."),
        TouristPlaceModel(name:"Sun Temple", location: "Konark, Odisha"),
        TouristPlaceModel(name:"Ellora Caves", location: "Aurangabad, Maharashtra"),
        TouristPlaceModel(name:"Ajanta Caves", location: "Aurangabad, Maharashtra"),
        TouristPlaceModel(name:"Khajuraho Temples", location: "Khajuraho, Madhya Pradesh"),
        TouristPlaceModel(name:"Humayun’s Tomb", location: "New Delhi")
    ]

    let strStringToTranslate = "Defining English literacy is a difficult and contentious task. In simple terms, the question 'What is literacy?' often prompts the answer 'the ability to read and write.' However, literacy is more accurately characterized as the ability to effectively use language to accomplish your goals in the social setting you are in. In short, literacy is perhaps the most important skill in modern society: those whose reading and writing skills are not sufficient for success in education or employment will be left behind.  Children who enter the school system with a level of English literacy substantially lower than that of their peers are often termed English language learners or English learners, and research has established that their entire future depends on whether they make up this literacy deficit"
    let arrStringToTranslate = ["What type of a language is HTML?",
        "What should be the first tag in any HTML Document?",
        "What tag is used to display a picture in a HTML page?",
        "What is the correct HTML tag for inserting a line break?",
        "What is the correct HTML for making a hyperlink?",
        "Which tag creates a check box for a form in HTML?",
        "Choose the correct HTML tag for the smallest size heading?",
        "How can we define a Video Tag in HTML 5?",
                     "This is new","OKAY"
    ]
    
    let dictionaryToTranslate = [
        "title":"iPhone 9",
        "description":"An apple mobile which is nothing like apple",
        "brand":"Apple",
        "category":"smartphones",
        "color":"red",
        "price":"2000"
    ]
    
    
    
    var arrOfStrings:[String] = [] 
    private func getFromLocalizationFiles() {
        let filePath = self.getLocalizableStringFilePath(withCode: "en")
        let dictOfEngishLocalizableStrings = NSDictionary(contentsOfFile: filePath) as? [String:String] ?? [:]
        self.arrOfStrings = dictOfEngishLocalizableStrings.map{$0.key}
    }
    
    private func getLocalizableStringFilePath(withCode langCode:String) -> String {
        //Get Localizable Language String File path from Localizable.strings according to language code.
        guard let  path = Bundle.main.path(forResource: langCode  , ofType: "lproj") else{
             return "en"
        }
        return (path + "/Localizable.strings")
    }
    
    func getJson(fileName:String) -> NSDictionary? {
        if let filePath = Bundle.main.path(forResource: fileName, ofType: "json") {
            do{
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: filePath), options: .mappedIfSafe)
                let jsonResult:NSDictionary = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) as! NSDictionary
                return jsonResult
            }catch {
                return nil
            }
        } else {
            return nil
        }
    }
}


struct TouristPlaceModel {
    var name = ""
    var location = ""
}
