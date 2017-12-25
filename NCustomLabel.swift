//
//  NCustomLabel.swift
//  ImageApp
//
//  Created by Nick on 12/24/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

class NCustomLabel: UILabel {
    convenience init(){
        self.init()
        
        self.textColor = UIColor.red
    }

    override func awakeAfter(using aDecoder: NSCoder) -> Any? {
        self.textColor = UIColor.lightGray
        return 0
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
