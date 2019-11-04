//
//  CustomTableViewCell.swift
//  App Test 2
//
//  Created by Justin Lo on 2019-09-05.
//  Copyright © 2019 Justin Lo. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    lazy var lbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 30))
        return lbl
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(lbl)
        // Configure the view for the selected state
    }

}
