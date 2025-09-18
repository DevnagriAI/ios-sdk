
//
//  NotificationVC.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit

class CellNotification: UITableViewCell {
    @IBOutlet weak var lblNotification:UILabel!
    @IBOutlet weak var lblMessage:UILabel!
}

class NotificationVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblNotification:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblNotification.dataSource = self
        self.tblNotification.delegate = self
    }
    
    @IBAction func buttonBackAction(_ :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNotifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let notification:CellNotification = tableView.dequeueReusableCell(withIdentifier: "CellNotification", for: indexPath) as! CellNotification
        
        notification.lblNotification.text = getLocalizedString(arrNotifications[indexPath.row].title)
        notification.lblMessage.text = getLocalizedString(arrNotifications[indexPath.row].message)
        
        return notification
    }
}

