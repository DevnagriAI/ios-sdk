
//
//  OnboardingVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

struct OnboardingItem{
    var title:String
    var subtitle:String
    var img:String
}

class OnboardingVC: UIViewController {

    @IBOutlet weak var imgBackground:UIImageView!
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblSubTitle:UILabel!
    @IBOutlet weak var buttonNext:UIButton!
    @IBOutlet weak var pageControl:UIPageControl!
    
    private var onboardingStep:Int = 0
    
    private let arrOfOnboardingItems:[OnboardingItem] = [
        OnboardingItem(title: "onboardingTitle1", subtitle: "onboardingSubtitle1", img: "step1"),
        OnboardingItem(title: "onboardingTitle2", subtitle: "onboardingSubtitle2", img: "step2"),
        OnboardingItem(title: "onboardingTitle3", subtitle: "onboardingSubtitle3", img: "step3")
    ]
    
    @IBAction func buttonNextAction(_ :UIButton){
        if self.arrOfOnboardingItems.count > self.onboardingStep + 1{
            self.onboardingStep += 1
            self.pageControl.currentPage = self.onboardingStep
            let item = self.arrOfOnboardingItems[self.onboardingStep]
            self.lblTitle.text = getLocalizedString(item.title)
            self.lblSubTitle.text = getLocalizedString(item.subtitle)
            self.imgBackground.image = UIImage(named: item.img)
            
            if self.onboardingStep == 2{
                self.buttonNext.setTitle(getLocalizedString("letExplore"), for: .normal)
            }
        } else{
            self.navigationController?.pushViewController(UIStoryboard.tabBarController(), animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonNext.layer.cornerRadius = 12
        self.pageControl.numberOfPages = self.arrOfOnboardingItems.count
        
         
        let item = self.arrOfOnboardingItems[self.onboardingStep]
        self.lblTitle.text = getLocalizedString(item.title)
        self.lblSubTitle.text = getLocalizedString(item.subtitle)
        self.imgBackground.image = UIImage(named: item.img)
        
        self.buttonNext.setTitle(getLocalizedString("next"), for: .normal)
        
    }


}

