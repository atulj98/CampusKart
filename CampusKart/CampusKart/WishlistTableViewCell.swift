//
//  WishlistTableViewCell.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import UIKit

class WishlistTableViewCell: UITableViewCell {

    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var wishlistPriceLabel: UILabel!
    @IBOutlet weak var wishlistNameLabel: UILabel!
    @IBOutlet weak var wishlistImageView: UIImageView!
    var isButtonRed = true
    
    func update(with wishlist: Wishlist){
        if let wishlistImage = UIImage(named: wishlist.wishlistImage){
            wishlistImageView.image = wishlistImage
            wishlistImageView.layer.cornerRadius = wishlistImageView.frame.size.height/2
            wishlistImageView.clipsToBounds = true
            wishlistImageView.contentMode = .scaleAspectFill
        }
        wishlistNameLabel.text = wishlist.wishlistName
        wishlistPriceLabel.text = wishlist.wishlistPrice
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        let _: CGRect = UIScreen.main.bounds
        wishlistImageView.frame = CGRect(x: 10, y: 25, width: 100, height: 100)
        
        
        wishlistButton.addTarget(self, action: #selector(toggleButtonColor), for: .touchUpInside)

        // Set initial color
        updateButtonColor()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // Function to toggle the button color
        @objc func toggleButtonColor() {
            isButtonRed.toggle()
            updateButtonColor()
        }
        
        // Function to update the button color based on the state
        func updateButtonColor() {
            let buttonColor = isButtonRed ? UIColor.red : UIColor.gray
            wishlistButton.tintColor = buttonColor
        }
}
