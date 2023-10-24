//
//  TweetTableViewCell.swift
//  SampleTwitterApp
//
//  Created by 高山彩愛 on 2023/10/24.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(username: String, discription: String) {
        nameLabel.text = username
        discriptionLabel.text = discription
    }
}
