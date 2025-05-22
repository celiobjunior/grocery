//
//  ProductTableViewCell.swift
//  grocery
//
//  Created by Celio Junior on 14/05/25.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected
        {
            contentView.backgroundColor = UIColor.systemGray5
        }
        else
        {
            contentView.backgroundColor = .white
        }
    }

}
