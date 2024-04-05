//
//  Account.swift
//  CampusKart
//
//  Created by Atul Kumar on 22/01/24.
//

import Foundation

struct Account{
    var image: String
    var typeName: String
}

class AccountDataModel{
   private var accountList : [Account] = [ Account(image: "person.fill", typeName: "Account Info"), Account(image: "cart.fill.badge.minus", typeName: "Your Ads"),Account(image: "gear", typeName: "Settings"), Account(image: "questionmark.circle.fill", typeName: "Help & Support"), Account(image: "door.left.hand.open", typeName: "Logout")
    ]
    
    func getAccount()->[Account]{
        return accountList
    }
}

var accountDataModel = AccountDataModel()
