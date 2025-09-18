//
//  HomeVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class HomeVC: UIViewController,UITextFieldDelegate, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var lblUserName:UILabel!
    @IBOutlet weak var buttonViewAll:UIButton!
    @IBOutlet weak var buttonViewAll2:UIButton!
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var viewSearch:UIView!
    @IBOutlet weak var lblFavPlaceTitle:UILabel!
    @IBOutlet weak var lblPopularResorts:UILabel!
    @IBOutlet weak var txtSerach:UITextField!
    @IBOutlet weak var lblChoseCategory:UILabel!
    @IBOutlet weak var collChoseCategory:UICollectionView!
    @IBOutlet weak var collFavoritePlace:UICollectionView!
    @IBOutlet weak var tblPopularResorts:UITableView!
    @IBOutlet weak var heightOfPopularResortsList:NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblPopularResorts.delegate = self
        self.tblPopularResorts.dataSource = self
        
        self.collChoseCategory.delegate = self
        self.collChoseCategory.dataSource = self
        
        self.collFavoritePlace.delegate = self
        self.collFavoritePlace.dataSource = self
        
        self.viewSearch.layer.cornerRadius = 12
        self.collChoseCategory.tag = 1
        self.collChoseCategory.register(UINib(nibName: "CellCategory", bundle: nil), forCellWithReuseIdentifier: "CellCategory")
        self.collFavoritePlace.tag = 2
        self.collFavoritePlace.register(UINib(nibName: "CellFavoritePlace", bundle: nil), forCellWithReuseIdentifier: "CellFavoritePlace")
        
        self.tblPopularResorts.register(UINib(nibName: "CellPopularResort", bundle: nil), forCellReuseIdentifier: "CellPopularResort")
        
        var heightOfTable = 0
        var index = 0
        for item in arrFavoritePlaces{
            heightOfTable += 32
            index += 1
            if (index == 3){
                break
            }
            for _ in item.resorts{
                heightOfTable += 186
            }
        }
        
        self.heightOfPopularResortsList.constant = CGFloat(heightOfTable) 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.lblTitle.text = getLocalizedString("homeTitle")
        self.lblUserName.text = getLocalizedString("Home")
        self.txtSerach.placeholder = getLocalizedString("searchDestination")
        self.txtSerach.delegate = self
        self.lblChoseCategory.text =  getLocalizedString("chooseCategory")
        self.lblFavPlaceTitle.text = getLocalizedString("favoritePlace")
        self.lblPopularResorts.text = getLocalizedString("PopularResorts")
        self.buttonViewAll.setTitle(getLocalizedString("viewAll"), for: .normal)
        self.buttonViewAll2.setTitle(getLocalizedString("viewAll"), for: .normal)
        tblPopularResorts.sectionHeaderTopPadding = 0
        self.tblPopularResorts.reloadData()
        self.collFavoritePlace.reloadData()
        self.collChoseCategory.reloadData()
    }
     
    @IBAction func buttonNotificationAction(_ :UIButton){
        self.navigationController?.pushViewController(UIStoryboard.notificationVC(), animated: true)
    }
    
    @IBAction func buttonViewAllResortsAction(_ :UIButton){
        self.navigationController?.pushViewController(UIStoryboard.allResortsVC(), animated: true)
    }
    
    @IBAction func buttonViewAllFavPlacesAction(_ :UIButton){
        let categoryVC = UIStoryboard.categoryVC() 
        self.navigationController?.pushViewController(categoryVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.collChoseCategory.tag == collectionView.tag{
            return arrOfCategories.count
        }else if self.collFavoritePlace.tag == collectionView.tag{
            return arrFavoritePlaces.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if self.collChoseCategory.tag == collectionView.tag{
            let cell:CellCategory = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCategory", for: indexPath) as! CellCategory
            
            cell.lblTitle.text = getLocalizedString(arrOfCategories[indexPath.row])
            return cell
        }
        
        if self.collFavoritePlace.tag == collectionView.tag{
            let cell:CellFavoritePlace = collectionView.dequeueReusableCell(withReuseIdentifier: "CellFavoritePlace", for: indexPath) as! CellFavoritePlace
            
            let place = arrFavoritePlaces[indexPath.item]
            cell.lblPlace.text = getLocalizedString(place.place)
            cell.lblCountry.text = getLocalizedString(place.country)
            cell.imgThumbnail.loadImage(from: place.thumbnail)
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if self.collFavoritePlace.tag == collectionView.tag{
            return CGSize(width: collectionView.frame.width/2.4, height: collectionView.frame.height)
        }
        
        return CGSize(width: collectionView.frame.width,
                      height: collectionView.frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.collFavoritePlace.tag == collectionView.tag{
            let favDetail = UIStoryboard.favoritePlaceDetailsVC()
            favDetail.favoritePlace = arrFavoritePlaces[indexPath.item]
            self.navigationController?.pushViewController(favDetail, animated: true)
        }else if self.collChoseCategory.tag == collectionView.tag{
            let categoryVC = UIStoryboard.categoryVC()
            categoryVC.category = arrOfCategories[indexPath.item]
            self.navigationController?.pushViewController(categoryVC, animated: true)
        }
    }
     
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFavoritePlaces[section].resorts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellResort:CellPopularResort = tableView.dequeueReusableCell(withIdentifier: "CellPopularResort", for: indexPath) as! CellPopularResort
        let resort = arrFavoritePlaces[indexPath.section].resorts[indexPath.row]
        
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
        
        cellResort.onLikeButtonClicked = {
            arrFavoritePlaces[indexPath.section].resorts[indexPath.row].isLiked = !(arrFavoritePlaces[indexPath.section].resorts[indexPath.row].isLiked ?? false)
            self.tblPopularResorts.reloadData()
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
           titleLabel.text = getLocalizedString(arrFavoritePlaces[section].place)
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
        let resort = arrFavoritePlaces[indexPath.section].resorts[indexPath.row]
        favDetail.favoritePlace = arrFavoritePlaces[indexPath.section]
        favDetail.popularResort = resort
        self.navigationController?.pushViewController(favDetail, animated: true)
    }
 

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


