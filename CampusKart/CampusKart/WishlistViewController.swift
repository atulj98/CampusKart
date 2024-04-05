//
//  WishlistViewController.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import UIKit

class WishlistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var wishlistTableView: UITableView!
    
    var myWishlist = wishlistDataModel.getWishlist()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myWishlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishlistCell", for: indexPath) as! WishlistTableViewCell
        
        let wishlist = myWishlist[indexPath.row]
        
        cell.update(with: wishlist)
        cell.showsReorderControl = true
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        wishlistTableView.delegate = self
        wishlistTableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
