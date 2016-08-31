//
//  ELoadingAnimationView.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 25/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

public class EtsuriLoaderView: UIView {
    
    private let logoLayer = LogoLayer()
    
    public init(screenAdjustment point: CGPoint, isOverlayed: Bool) {
        let screenWidth = UIScreen.mainScreen().bounds.size.width - point.x
        let screenHeight = UIScreen.mainScreen().bounds.size.height - point.y
        
        let originX = (screenWidth - (maxWidth + framePadding)) / 2
        let originY = (screenHeight - (maxHeight + framePadding)) / 2
        
        super.init(frame: CGRectMake(originX, originY, maxWidth + framePadding, maxHeight + framePadding))
        
        if isOverlayed {
            self.backgroundColor = UIColor(white: 0/255, alpha: 0.75)
            self.layer.cornerRadius = 7.5
        } else {
            self.backgroundColor = UIColor.clearColor()
        }
        
        self.layer.addSublayer(logoLayer)
    }
    
    public class func showLoading(fromView view: UIView,
                                           screenAdjustment point: CGPoint,
                                                            isOverlayed: Bool) {
        let loadingView = EtsuriLoaderView(screenAdjustment: point,
                                           isOverlayed: isOverlayed)
        view.addSubview(loadingView)
    }
    
    public class func hideLoadingView(fromView view: UIView) {
        let loadingView = self.loaderForView(view)
        if let currentLoadingView = loadingView {
            currentLoadingView.removeFromSuperview()
        }
    }
    
    public class func loaderForView(view: UIView) -> EtsuriLoaderView? {
        let subviewsEnum = view.subviews.reverse()
        for subview in subviewsEnum {
            if subview is EtsuriLoaderView {
                return (subview as? EtsuriLoaderView)
            }
        }
        return nil
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
