//
//  LinePath.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 24/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

class LinePath: UIBezierPath {

    static let midCircleOriginX = maxWidth / 2
    static let midCircleOriginY = (maxHeight - maxCircleWidth) / 2
    static let originY = midCircleOriginY + (maxCircleWidth/2)
    static let originX = maxWidth - maxCircleWidth
    
    var midStraightLine: UIBezierPath {
        let endPoint = CGPointMake(LinePath.midCircleOriginX + (maxCircleWidth/2), LinePath.originY)
        let startPoint = CGPointMake(0, LinePath.originY)
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(startPoint)
        bezierPath.addLineToPoint(endPoint)
        return bezierPath
    }
    
    var topQuadCurveLine: UIBezierPath {
        let startPoint = CGPointMake(LinePath.originX + 1, 0 + (maxCircleWidth/2))
        let endPoint = CGPointMake(0 + logoLineWidth/2, LinePath.originY)
        let controlPoint = CGPointMake(0, maxCircleWidth/2)
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(startPoint)
        bezierPath.addQuadCurveToPoint(endPoint, controlPoint: controlPoint)
        return bezierPath
    }
    
    var bottomQuadCurveLine: UIBezierPath {
        let endPoint = CGPointMake(LinePath.originX + 1, maxHeight - maxCircleWidth + (maxCircleWidth/2))
        let startPoint = CGPointMake(0 + logoLineWidth/2, LinePath.originY)
        let controlPoint = CGPointMake(0, maxHeight - (maxCircleWidth/2))
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(startPoint)
        bezierPath.addQuadCurveToPoint(endPoint, controlPoint: controlPoint)
        return bezierPath
    }
    
    override init() {
        super.init()
        appendPath(topQuadCurveLine)
        appendPath(midStraightLine)
        appendPath(bottomQuadCurveLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
