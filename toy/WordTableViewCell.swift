//
//  AstroTableViewCell.swift
//  toy
//
//  Created by Cherie Li on 10/20/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

class WordTableViewCell: UITableViewCell {

    @IBOutlet weak var WordLabel: UILabel!
    @IBOutlet weak var WordImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
