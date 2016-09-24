//
//  ItemTableViewCell.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/24/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var buyNowButton: UIButton!
    @IBOutlet var mainStackView: UIStackView!
    @IBOutlet var commentLabel1: UILabel!
    @IBOutlet var commentLabel2: UILabel!
    @IBOutlet var commentLabel3: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
