//
//  File.swift
//  CampusKart
//
//  Created by Atul Kumar on 18/01/24.
//

import Foundation

struct Product{
    var image: String
    var productName: String
    var productPrice: String
    var productDescription: String
    var postedAgo: String
}

class ProductDataModel{
    private var productList: [Product] = [ Product(image: "Meluhas", productName: "The Immortals of Meluha", productPrice: "₹200", productDescription: "1 month old, Paperback", postedAgo: "1d Ago"), Product(image: "laptop", productName: "Macbook Air M1", productPrice: "₹37,000", productDescription: "1 year old, grey colour, 256 GB", postedAgo: "3d Ago"), Product(image: "bicycle", productName: "Decathlon Bicycle", productPrice: "₹8,000", productDescription: "2 month old, Gear", postedAgo: "1w Ago"), Product(image: "itends", productName: "It Ends With Us", productPrice: "₹100", productDescription: "3 month old, Paperback", postedAgo: "2w Ago")
    ]
    
    func getProduct()-> [Product]{
        return productList
    }
}

var productDataModel = ProductDataModel()
