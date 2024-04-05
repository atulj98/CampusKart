//
//  ProductTableViewCell.swift
//  CampusKart
//
//  Created by Atul Kumar on 18/01/24.
//

import UIKit

protocol ProductCellDelegate: AnyObject {
    func didSelectProduct(_ product: Product)
}

class ProductTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var postedAgo: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var wishlistButton: UIButton!
    
    var isButtonRed = false
    
    func update(with product: Product){
        if let productImage = UIImage(named: product.image){
            productImageView.image = productImage
            productImageView.layer.cornerRadius = productImageView.frame.size.height/2
            productImageView.clipsToBounds = true
            productImageView.contentMode = .scaleAspectFill
        }
        productName.text = product.productName
        productPrice.text = product.productPrice
        productDescription.text = product.productDescription
        postedAgo.text = product.postedAgo
    }

    override func awakeFromNib() {
        super.awakeFromNib()

//        let _: CGRect = UIScreen.main.bounds
        productImageView.frame = CGRect(x: 10, y: 25, width: 100, height: 100)
        
        
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
