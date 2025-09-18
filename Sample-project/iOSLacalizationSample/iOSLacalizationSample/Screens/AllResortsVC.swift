

//
//  AllResortsVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit

class AllResortsVC: UIViewController ,UITableViewDelegate, UITableViewDataSource{
  
    @IBOutlet weak var tblPopularResorts:UITableView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblPopularResorts.delegate = self
        self.tblPopularResorts.dataSource = self
        
        self.tblPopularResorts.register(UINib(nibName: "CellPopularResort", bundle: nil), forCellReuseIdentifier: "CellPopularResort")
    }
    
    
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFavoritePlaces[section].resorts.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrFavoritePlaces.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .white
           let titleLabel = UILabel()
           titleLabel.text = getLocalizedString(arrFavoritePlaces[section].place)
           titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
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
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellResort:CellPopularResort = tableView.dequeueReusableCell(withIdentifier: "CellPopularResort", for: indexPath) as! CellPopularResort
        let resort = arrFavoritePlaces[indexPath.section].resorts[indexPath.row]
        
        cellResort.lblResortName.text = getLocalizedString(resort.name )
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
        cellResort.onLikeButtonClicked = {
            arrFavoritePlaces[indexPath.section].resorts[indexPath.row].isLiked = !(arrFavoritePlaces[indexPath.section].resorts[indexPath.row].isLiked ?? false)
            self.tblPopularResorts.reloadData()
         }
        
        if let imageUrl =  dictOfUrls[resort.name]{
            cellResort.imgThumbnail.loadImage(from: imageUrl)
        }
         
        return cellResort
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          
        let favDetail = UIStoryboard.favoritePlaceDetailsVC()
        let resort = arrFavoritePlaces[indexPath.section].resorts[indexPath.row]
        favDetail.favoritePlace = arrFavoritePlaces[indexPath.section]
        favDetail.popularResort = resort
        self.navigationController?.pushViewController(favDetail, animated: true)
    }
}

