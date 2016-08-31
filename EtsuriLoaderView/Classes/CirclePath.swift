//
//  CirclePath.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 24/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

class CirclePath: UIBezierPath {

    var circlePathSmall: UIBezierPath {
        let originX = maxWidth - (maxCircleWidth/5) + (framePadding/2)
        let originY: CGFloat = framePadding/2
        return UIBezierPath(ovalInRect: CGRectMake(originX, originY, maxCircleWidth/5, maxCircleWidth/5))
    }
    
    var circlePathBig: UIBezierPath {
        let originX = maxWidth - maxCircleWidth + (framePadding/2)
        return UIBezierPath(ovalInRect: CGRectMake(originX, framePadding/2, maxCircleWidth, maxCircleWidth))
    }
    
    var midCirclePathSmall: UIBezierPath {
        let originX = (maxWidth/2) + (framePadding/2)
        let originY = ((maxHeight - (maxCircleWidth/5)) / 2) + (framePadding/2)
        return UIBezierPath(ovalInRect: CGRectMake(originX, originY, maxCircleWidth/5, maxCircleWidth/5))
        
    }
    
    var midCirclePathBig: UIBezierPath {
        let originX = maxWidth/2 + (framePadding/2)
        let originY = ((maxHeight - maxCircleWidth) / 2) + (framePadding/2)
        return UIBezierPath(ovalInRect: CGRectMake(originX, originY, maxCircleWidth, maxCircleWidth))
    }
    
    var bottomCirclePathBig: UIBezierPath {
        let originX = maxWidth - maxCircleWidth + (framePadding/2)
        let originY = maxHeight - maxCircleWidth + (framePadding/2)
        return UIBezierPath(ovalInRect: CGRectMake(originX, originY, maxCircleWidth, maxCircleWidth))
    }
    
    var bottomCirclePathSmall: UIBezierPath {
        let originX = maxWidth - (maxCircleWidth/5) + (framePadding/2)
        let originY = maxHeight - (maxCircleWidth/5) + (framePadding/2)
        return UIBezierPath(ovalInRect: CGRectMake(originX, originY, maxCircleWidth/5, maxCircleWidth/5))
    }
    
    var smallCirclesPath: UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.appendPath(circlePathSmall)
        bezierPath.appendPath(midCirclePathSmall)
        bezierPath.appendPath(bottomCirclePathSmall)
        return bezierPath
    }

    
    override init() {
        super.init()
        appendPath(circlePathBig)
        appendPath(midCirclePathBig)
        appendPath(bottomCirclePathBig)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
