//
//  ChatTableViewCell.swift
//  CampusKart
//
//  Created by Atul Kumar on 24/01/24.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    @IBOutlet weak var chatImageView: UIImageView!
    
    @IBOutlet weak var chatNameLabel: UILabel!
    
    @IBOutlet weak var chatMessageLabel: UILabel!
    func update(with chatList: Chat){
        if let chatListImage = UIImage(named: chatList.productImage){
            chatImageView.image = chatListImage
            chatImageView.layer.cornerRadius = chatImageView.frame.size.height/2
            chatImageView.clipsToBounds = true
            chatImageView.contentMode = .scaleAspectFill
        }
        chatNameLabel.text = chatList.productName
        chatMessageLabel.text = chatList.message
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        chatImageView.frame = CGRect(x: 15, y: 12, width: 60, height: 60)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
