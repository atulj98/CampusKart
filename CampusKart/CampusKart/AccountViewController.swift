//
//  AccountViewController.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import UIKit

class AccountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var accountTableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    
    var accountview = accountDataModel.getAccount()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        accountview.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath) as! AccountTableViewCell
        
        let account = accountview[indexPath.row]
        
        cell.update(with: account)
        cell.showsReorderControl = true
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
        profileImage.clipsToBounds = true
        
        accountTableView.delegate = self
        accountTableView.dataSource = self
        // Do any additional setup after loading the view.
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
