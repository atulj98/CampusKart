//
//  AccountTableViewCell.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import UIKit

class AccountTableViewCell: UITableViewCell {

    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    func update(with account: Account){
        if let cellImage = UIImage(systemName: account.image){
            cellImageView.image = cellImage
            cellImageView.layer.cornerRadius = cellImageView.frame.size.height/2
            cellImageView.clipsToBounds = true
        }
        cellName.text = account.typeName
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        let _: CGRect = UIScreen.main.bounds
        
//        let screenSize: CGRect = UIScreen.main.bounds
//        cellImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
