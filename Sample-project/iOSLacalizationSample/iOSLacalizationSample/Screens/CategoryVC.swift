
//
//  CategoryVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 23/08/25.
//

import UIKit

class CategoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblNoData:UILabel!
    @IBOutlet weak var lblThereIsNoData:UILabel!
    @IBOutlet weak var collFavoritePlace:UICollectionView!
    
    var category:String?
    
    private var arrPlaces:[PlacePackage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collFavoritePlace.delegate = self
        collFavoritePlace.dataSource = self
        
        lblNoData.text = getLocalizedString("NoData")
        lblThereIsNoData.text = getLocalizedString("ThereIsNoData")
        
        self.lblTitle.text = getLocalizedString("Category")
        if let category = category{
            self.arrPlaces = arrFavoritePlaces.filter({$0.category == category})
        }else{
            self.arrPlaces = arrFavoritePlaces
        }
        self.collFavoritePlace.isHidden = !(self.arrPlaces.count > 0)
        self.collFavoritePlace.reloadData()
        self.collFavoritePlace.register(UINib(nibName: "CellFavoritePlace", bundle: nil), forCellWithReuseIdentifier: "CellFavoritePlace")
    }
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPlaces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:CellFavoritePlace = collectionView.dequeueReusableCell(withReuseIdentifier: "CellFavoritePlace", for: indexPath) as! CellFavoritePlace
        
        let place = arrPlaces[indexPath.item]
        cell.lblPlace.text = getLocalizedString(place.place)
        cell.lblCountry.text = getLocalizedString(place.country)
        cell.imgThumbnail.loadImage(from: place.thumbnail)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width/2)-6, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let favDetail = UIStoryboard.favoritePlaceDetailsVC()
        favDetail.favoritePlace = arrPlaces[indexPath.item]
        self.navigationController?.pushViewController(favDetail, animated: true)
    }
}

