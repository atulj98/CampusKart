//
//  Wishlist.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import Foundation


struct Wishlist{
    var wishlistImage: String
    var wishlistName: String
    var wishlistPrice: String
}

class WishlistDataModel{
    private var wishlist: [Wishlist] = [ Wishlist(wishlistImage: "itends", wishlistName: "It Ends With Us", wishlistPrice: "₹100"), Wishlist(wishlistImage: "Meluhas", wishlistName: "The Immortals Of Meluha", wishlistPrice: "₹200")
    ]
    
    func getWishlist()->[Wishlist]{
        return wishlist
    }
}

var wishlistDataModel = WishlistDataModel()
