//
//  BorderButton.swift
//  Swoosh
//
//  Created by Todd Fields on 2017-08-24.
//  Copyright © 2017 Todd Fields. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
