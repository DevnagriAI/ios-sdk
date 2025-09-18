
//
//  ViewController.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class WishlistVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var lblTitle:UILabel!
    
    @IBOutlet weak var lblNoWishlist:UILabel!
    @IBOutlet weak var lblNoWishlistMessage:UILabel!
    @IBOutlet weak var buttonAddNow:UIButton!
    @IBOutlet weak var tblPopularResorts:UITableView!
    
    
    private var arrOfWhiteListed:[PlacePackage] = []
     
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.lblNoWishlist.text = getLocalizedString("NoWishlist")
        self.lblNoWishlistMessage.text = getLocalizedString("YourWishlistWaitingFilledWithFavorites")
        self.lblTitle.text = getLocalizedString("Wishlist")
        self.buttonAddNow.setTitle(getLocalizedString("AddNow"), for: .normal)
        self.buttonAddNow.layer.cornerRadius = 12
        self.whitelistedList()
    }
    
    @IBAction func buttonAddNowAction(_ :UIButton){
        self.tabBarController?.selectedIndex = 0
    }
    
    private func whitelistedList(){
        self.arrOfWhiteListed = []
        for place in arrFavoritePlaces{
            var arrResorts:[PopularResort] = []
            var isAdded = false
            for resort in place.resorts{
                if (resort.isLiked ?? false){
                    isAdded = true
                    arrResorts.append(resort)
                }
            }
            
            if (isAdded){
                var tmpPlace = place
                tmpPlace.resorts = arrResorts
                arrOfWhiteListed.append(tmpPlace)
            }
        }
        self.tblPopularResorts.isHidden = arrOfWhiteListed.count == 0
        self.tblPopularResorts.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblPopularResorts.delegate = self
        tblPopularResorts.dataSource = self
        self.tblPopularResorts.register(UINib(nibName: "CellPopularResort", bundle: nil), forCellReuseIdentifier: "CellPopularResort")
        self.lblTitle.text = getLocalizedString("welcome")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrOfWhiteListed.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfWhiteListed[section].resorts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellResort:CellPopularResort = tableView.dequeueReusableCell(withIdentifier: "CellPopularResort", for: indexPath) as! CellPopularResort
        let resort = arrOfWhiteListed[indexPath.section].resorts[indexPath.row]
        
        cellResort.lblResortName.text = getLocalizedString(resort.name)
        cellResort.lblResortDescription.text = getLocalizedString(resort.description)
        cellResort.lblPrice.text = resort.pricePerPerson
        cellResort.lblRating.text = String(resort.rating)
        
        if let imageUrl =  dictOfUrls[resort.name]{
            cellResort.imgThumbnail.loadImage(from: imageUrl)
        }
        if (resort.isLiked ?? false){
            cellResort.buttonLike.setImage(UIImage(named: "heart")?.withTintColor(.red), for: .normal)
        }else{
            cellResort.buttonLike.setImage(UIImage(named: "heart")?.withTintColor(.black), for: .normal)
            
        }
        
        cellResort.onLikeButtonClicked = {  [weak self] in
               
            var totalResorts = self?.arrOfWhiteListed[indexPath.section].resorts.count ?? 0

            if totalResorts > 0 {
                if let removedResort = self?.arrOfWhiteListed[indexPath.section].resorts.remove(at: indexPath.row) {
                    
                    // Update arrFavoritePlaces as well
                    if let placeId = self?.arrOfWhiteListed[indexPath.section].id,
                       let placeIndex = arrFavoritePlaces.firstIndex(where: { $0.id == placeId }),
                       let resortIndex = arrFavoritePlaces[placeIndex].resorts.firstIndex(where: { $0.id == removedResort.id }) {
                        
                        arrFavoritePlaces[placeIndex].resorts[resortIndex].isLiked = false
                    }
                }
            }

            totalResorts = self?.arrOfWhiteListed[indexPath.section].resorts.count ?? 0

            if totalResorts == 0 {
                self?.arrOfWhiteListed.remove(at: indexPath.section)
            }

            self?.tblPopularResorts.isHidden = self?.arrOfWhiteListed.count == 0
            self?.tblPopularResorts.reloadData()
            
//            var totalResorts = self?.arrOfWhiteListed[indexPath.section].resorts.count ?? 0
//            
//            if (totalResorts > 0){
//                let removedResort = self?.arrOfWhiteListed[indexPath.section].resorts.remove(at: indexPath.row)
//            }
//            
//            totalResorts = self?.arrOfWhiteListed[indexPath.section].resorts.count ?? 0
//            
//            if totalResorts == 0{
//                self?.arrOfWhiteListed.remove(at: indexPath.section)
//            }
//            
//            self?.tblPopularResorts.isHidden = self?.arrOfWhiteListed.count == 0
//            self?.tblPopularResorts.reloadData()
         }
        return cellResort
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .white
           let titleLabel = UILabel()
           titleLabel.text = getLocalizedString(arrOfWhiteListed[section].place)
        titleLabel.font = UIFont(name: "Verdena", size: 32)
           titleLabel.textColor = .label
           titleLabel.translatesAutoresizingMaskIntoConstraints = false
           // Add label to header
           headerView.addSubview(titleLabel)
           // Add Auto Layout constraints
           NSLayoutConstraint.activate([
               titleLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16),
               titleLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -16),
               titleLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
           ])
           return headerView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let favDetail = UIStoryboard.favoritePlaceDetailsVC()
        let resort = arrOfWhiteListed[indexPath.section].resorts[indexPath.row]
        favDetail.favoritePlace = arrOfWhiteListed[indexPath.section]
        favDetail.popularResort = resort
        self.navigationController?.pushViewController(favDetail, animated: true)
    }
}

