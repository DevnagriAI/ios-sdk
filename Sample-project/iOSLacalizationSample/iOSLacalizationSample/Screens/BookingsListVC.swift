
//
//  ViewController.swift
//  iOSLacalizationSample
//
//  Created by Vijay Jangid on 21/08/25.
//

import UIKit
 
class BookingsListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lblTitle:UILabel!
    
    @IBOutlet weak var lblNoBooking:UILabel!
    @IBOutlet weak var lblNoBookingMessage:UILabel!
    
    @IBOutlet weak var tblBookings:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tblBookings.register(UINib(nibName: "CellBooked", bundle: nil), forCellReuseIdentifier: "CellBooked")
        self.tblBookings.delegate = self
        self.tblBookings.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tblBookings.reloadData()
        self.lblNoBooking.text = getLocalizedString("NoBooking")
        self.lblNoBookingMessage.text = getLocalizedString("NoBookingMessages")
        self.lblTitle.text = getLocalizedString("Bookings")
        
        self.tblBookings.isHidden = arrOfBookings.count == 0
        self.tblBookings.backgroundColor = .white
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfBookings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellBooked:CellBooked = tableView.dequeueReusableCell(withIdentifier: "CellBooked", for: indexPath) as! CellBooked
        let bookedItem = arrOfBookings[indexPath.row]
        
        cellBooked.lblTitle.text = getLocalizedString(bookedItem.title)
        cellBooked.lblSubtitle.text = getLocalizedString(bookedItem.subtitle)
        cellBooked.lblPrice.text = bookedItem.price
        cellBooked.lblCreatedAt.text = bookedItem.bookedAt.formatted()
        
        return cellBooked
    }
    
}

