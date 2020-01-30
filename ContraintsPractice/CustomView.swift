//
//  CustomView.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/30/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    var color: UIColor!
    var radius: Int!
    
    required init(color: UIColor, radius: Int) {
        super.init(frame: .zero)
        self.color = color
        self.radius = radius
        setup()
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    func setup() {
        self.backgroundColor = color
        self.layer.cornerRadius = CGFloat(radius)
    }

}
