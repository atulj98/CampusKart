//
//  SellViewController.swift
//  CampusKart
//
//  Created by Atul Kumar on 25/01/24.
//

import UIKit

class SellViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func viewOneTapped(sender: UITapGestureRecognizer) {
        self.navigationController?.pushViewController(AdInfoViewController(), animated: true)
    }
}
