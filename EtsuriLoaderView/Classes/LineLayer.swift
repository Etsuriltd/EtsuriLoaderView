//
//  LineLayer.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 24/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

class LineLayer: CAShapeLayer {
    let linePath = LinePath()

    override init() {
        super.init()
        fillColor = UIColor.clearColor().CGColor
        strokeColor = UIColor(red: 255/255, green: 60/255, blue: 60/255, alpha: 1).CGColor
        lineWidth = logoLineWidth
        path = linePath.CGPath

        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = 0.5
        
        let animationGroup = CAAnimationGroup()
        animationGroup.beginTime = 0
        animationGroup.duration = 0.75
        animationGroup.repeatCount = Float.infinity
        animationGroup.animations = [animation]
        animationGroup.fillMode = kCAFillModeForwards
        animationGroup.removedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        addAnimation(animationGroup, forKey: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
