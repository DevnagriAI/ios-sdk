
//
//  ViewController.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class BookingVC: UIViewController {
 
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblDateTitle:UILabel!
    @IBOutlet weak var lblParticipantsTitle:UILabel!
    @IBOutlet weak var lblStartingTimeTitle:UILabel!
    @IBOutlet weak var lblAdult:UILabel!
    @IBOutlet weak var lblStartingTime:UILabel!
    @IBOutlet weak var buttonBookNow:UIButton!
    @IBOutlet weak var lblTotalPrice:UILabel!
    @IBOutlet weak var lblTaxInfo:UILabel!
    @IBOutlet weak var lblSelect:UILabel!
    
    @IBOutlet weak var lblPackageDescription:UILabel!
    @IBOutlet weak var lblPackageTitle:UILabel!
    @IBOutlet weak var lblPackageSubtile:UILabel!
    @IBOutlet weak var lblPackagePrice:UILabel!
    
    var favoritePlace:PlacePackage?
    var popularResort:PopularResort?
    
    @IBOutlet weak var stackDateAdult:UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDateTitle.text = getLocalizedString("date")
        lblParticipantsTitle.text = getLocalizedString("participants")
        lblStartingTimeTitle.text = getLocalizedString("startingTime")
        buttonBookNow.setTitle(getLocalizedString("bookNow"), for: .normal)
        lblTotalPrice.text = getLocalizedString("totalPrice")
        lblTaxInfo.text = getLocalizedString("taxInfo")
        lblSelect.text = getLocalizedString("select")
        lblAdult.text = getLocalizedString("adult")
 
        stackDateAdult.layer.cornerRadius = 12
        stackDateAdult.layer.borderWidth = 1
        buttonBookNow.layer.cornerRadius = 12
        stackDateAdult.layer.borderColor = UIColor.black.withAlphaComponent(0.3).cgColor
        stackDateAdult.clipsToBounds = true
        self.lblTitle.text = getLocalizedString("booking")
 
        self.lblPackageDescription.text = getLocalizedString("PackageDescription")
        
        if let resort = self.popularResort{
            self.lblPackageTitle.text = getLocalizedString(resort.name)
            self.lblPackageSubtile.text = getLocalizedString(resort.description)
            self.lblPackagePrice.text = getLocalizedString(resort.pricePerPerson)
        }else if  let favoritePlace = self.favoritePlace{
            self.lblPackageTitle.text = getLocalizedString(favoritePlace.place)
            self.lblPackageSubtile.text = getLocalizedString(favoritePlace.country)
            self.lblPackagePrice.text = getLocalizedString(favoritePlace.pricePerPerson)
        }
    }
    
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)    }
    
    @IBAction func buttonBookNowAction(_ :UIButton){
        if let resort = self.popularResort{
            arrOfBookings.append(BookingItem(title: resort.name, subtitle: resort.description, bookedAt: Date(), price: resort.pricePerPerson))
        }else if let favoritePlace = self.favoritePlace{
            arrOfBookings.append(BookingItem(title: favoritePlace.place, subtitle: favoritePlace.country, bookedAt: Date(), price: favoritePlace.pricePerPerson))
        }
        self.navigationController?.pushViewController(UIStoryboard.bookingSuccesfullVC(), animated: true)
    }
    
}

