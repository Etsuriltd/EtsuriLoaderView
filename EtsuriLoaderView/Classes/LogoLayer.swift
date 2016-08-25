//
//  LogoLayer.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 25/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

class LogoLayer: CAShapeLayer {

    
    override init() {
        super.init()
        
        let circleLayer = CircleLayer()
        let lineLayer = LineLayer()
        addSublayer(circleLayer)
        addSublayer(lineLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
