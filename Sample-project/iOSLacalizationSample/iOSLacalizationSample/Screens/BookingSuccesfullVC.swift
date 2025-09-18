
//
//  BookingSuccesfullVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 25/08/25.
//

import UIKit

class BookingSuccesfullVC: UIViewController {
 
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    @IBOutlet weak var buttonExploreMorePlan:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonExploreMorePlan.layer.cornerRadius = 12
        self.lblTitle.text = getLocalizedString("BookingSuccessfully")
        self.lblSubtitle.text = getLocalizedString("GetEverythingReadyUntilItTimeToGoOnTrip")
        self.buttonExploreMorePlan.setTitle(getLocalizedString("ExploreOtherPlaces"), for: .normal)
        
    }
    
    @IBAction func buttonExploreMorePlanAction(_ :UIButton){
        self.navigationController?.setViewControllers([UIStoryboard.tabBarController()], animated: true)
    }
}

