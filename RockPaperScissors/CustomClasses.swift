//
//  CustomClasses.swift
//  RockPaperScissors
//
//  Created by Ashutosh Billa on 23/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 3.5
        self.layer.shadowOpacity = 0.8
    }
    
}
