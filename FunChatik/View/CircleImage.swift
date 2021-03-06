//
//  CircleImage.swift
//  FunChatik
//
//  Created by Natalia on 7/13/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import UIKit

@IBDesignable //add properties to storyboard
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
