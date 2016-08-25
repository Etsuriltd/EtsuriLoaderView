//
//  CircleLayer.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 23/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

enum CirclePosition {
    case top, middle, bottom
}

class CircleLayer: CAShapeLayer {
    let circlesPath = CirclePath()

    override init() {
        super.init()
        fillColor = UIColor.whiteColor().CGColor
        
        
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        animation.fromValue = circlesPath.smallCirclesPath.CGPath
        animation.toValue = circlesPath.CGPath
        animation.duration = 0.5
        
        let animationGroup = CAAnimationGroup()
        animationGroup.delegate = self
        animationGroup.beginTime = 0
        animationGroup.duration = 0.75
        animationGroup.repeatCount = Float.infinity
        animationGroup.animations = [animation]
        animationGroup.fillMode = kCAFillModeForwards
        animationGroup.removedOnCompletion = false
        addAnimation(animationGroup, forKey: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func animationDidStart(anim: CAAnimation) {
        path = circlesPath.CGPath
    }
}
