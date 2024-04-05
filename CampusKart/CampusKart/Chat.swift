//
//  Chat.swift
//  CampusKart
//
//  Created by Atul Kumar on 24/01/24.
//

import Foundation

struct Chat {
    var productImage: String
    var productName: String
    var message: String
}

class ChatDataModel{
    private var chatList : [Chat] = [ Chat(productImage: "Meluhas", productName: "The Immortals of Meluha", message: "Hi, I am interested in buying your book but I can give you only 100 rupees"), Chat(productImage: "itends", productName: "It Ends With Us", message: "Hi, where can we meet?")
    ]
    
    func getChat()->[Chat]{
        return chatList
    }
}

var chatDataModel = ChatDataModel()
