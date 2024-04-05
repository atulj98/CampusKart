//
//  ProductViewController.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import UIKit

class ProductViewController: UIViewController {
    
    var selectedProduct: Product?
    

    @IBOutlet weak var ProductImageView: UIImageView!
    @IBOutlet weak var heartButton: UIButton!
    
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productPriceLabel: UILabel!
    
    @IBOutlet weak var productInfoLabel: UILabel!
    
    var isButtonRed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let product = selectedProduct {
            ProductImageView.image = UIImage(named: product.image)
            productNameLabel.text = product.productName
            productPriceLabel.text = product.productPrice
            productInfoLabel.text = product.productDescription
            }
        // Do any additional setup after loading the view.
        
            heartButton.addTarget(self, action: #selector(toggleButtonColor), for: .touchUpInside)
            updateButtonColor()
    }
    

    // Function to toggle the button color
        @objc func toggleButtonColor() {
            isButtonRed.toggle()
            updateButtonColor()
        }
        
        // Function to update the button color based on the state
        func updateButtonColor() {
            let buttonColor = isButtonRed ? UIColor.red : UIColor.gray
            heartButton.tintColor = buttonColor
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
