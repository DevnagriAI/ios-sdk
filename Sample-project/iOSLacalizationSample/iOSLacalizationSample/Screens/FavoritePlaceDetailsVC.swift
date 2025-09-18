 
//
//  ViewController.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit
 

class FavoritePlaceDetailsVC: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var lblCountry:UILabel!
    @IBOutlet weak var lblPlace:UILabel!
    @IBOutlet weak var lblDescription:UILabel!
    @IBOutlet weak var lblPricePerPerson:UILabel!
    @IBOutlet weak var lblRating:UILabel!
    @IBOutlet weak var buttonBooking:UIButton!
    @IBOutlet weak var lblPerson:UILabel!
    @IBOutlet weak var buttonSeeReview:UIButton!
    @IBOutlet weak var imgBackground:UIImageView!
     
    @IBOutlet weak var collActivities:UICollectionView!
    
    var favoritePlace:PlacePackage?
    var popularResort:PopularResort?
      
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonBooking.layer.cornerRadius = 12
        
        if let resort = self.popularResort{
            self.lblPlace.text = getLocalizedString(resort.name)
            self.lblDescription.text = getLocalizedString(resort.description)
            self.lblPricePerPerson.text = resort.pricePerPerson
            self.lblRating.text = String(resort.rating)
            self.imgBackground.loadImage(from: dictOfUrls[resort.name] ?? "") 
        } else if  let favoritePlace = self.favoritePlace {
            self.lblCountry.text = getLocalizedString(favoritePlace.country)
            self.lblPlace.text = getLocalizedString(favoritePlace.place)
            self.lblDescription.text = getLocalizedString(favoritePlace.description)
            self.lblPricePerPerson.text = favoritePlace.pricePerPerson
            self.lblRating.text = String(favoritePlace.rating)
            self.imgBackground.loadImage(from: favoritePlace.thumbnail)
        }
        
        self.buttonSeeReview.isHidden = true
        if (self.favoritePlace?.review.count ?? 0 > 0){
            self.buttonSeeReview.isHidden = false
        }
        
        self.buttonSeeReview.setTitle(getLocalizedString("SeeReviews"), for: .normal)
        self.buttonBooking.setTitle(getLocalizedString("booking"), for: .normal)
        self.lblPerson.text = getLocalizedString("person")
        self.collActivities.register(UINib(nibName: "CellActivity", bundle: nil), forCellWithReuseIdentifier: "CellActivity")
    }
    
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
     
    @IBAction func bookButtonTapped(_ sender: UIButton) {
        let bookVC = UIStoryboard.bookingVC()
        bookVC.favoritePlace = self.favoritePlace
        bookVC.popularResort = self.popularResort
        self.navigationController?.pushViewController(bookVC, animated: true)
    }
    
    @IBAction func buttonReviewsAction(_ :UIButton){
        if let reviews = self.favoritePlace?.review{
            let userReviewVC = UIStoryboard.userReviewVC()
            userReviewVC.reviews = reviews
            userReviewVC.modalPresentationStyle = .overFullScreen
            self.navigationController?.present(userReviewVC, animated: true)
            
        }else{
            print("Reviews are not available")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.favoritePlace?.activities.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let activity:CellActivity = collectionView.dequeueReusableCell(withReuseIdentifier: "CellActivity", for: indexPath) as! CellActivity
        
        let arrActivities = self.favoritePlace?.activities ?? []
        activity.lblActivity.text = getLocalizedString(arrActivities[indexPath.item])
        
        return activity
    }
}


