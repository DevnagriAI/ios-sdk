

//
//  UserReviewVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 22/08/25.
//

import UIKit

class UserReviewVC: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var viewContainer:UIView!
    @IBOutlet weak var tblReviewList:UITableView!
    @IBOutlet weak var heightOfTable:NSLayoutConstraint!
    
    var reviews:[UserReview]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.heightOfTable.constant = CGFloat((self.reviews?.count ?? 0) * 120)
        self.viewContainer.layer.cornerRadius = 24
        self.tblReviewList.register(UINib(nibName: "CellReview", bundle: nil), forCellReuseIdentifier: "CellReview")
    }
    
    @IBAction func buttonBackAction(_ :UIButton){
        self.dismiss(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.reviews?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CellReview = tableView.dequeueReusableCell(withIdentifier: "CellReview", for: indexPath) as! CellReview
        
        let review = (reviews ?? [])[indexPath.item]
        cell.lblReview.text = getLocalizedString(review.review)
        cell.lblUserName.text = getLocalizedString(review.username)
        
        return cell
    }
}

