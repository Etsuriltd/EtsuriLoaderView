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
    
    public init(screenAdjustment point: CGPoint) {
        let screenWidth = UIScreen.mainScreen().bounds.size.width - point.x
        let screenHeight = UIScreen.mainScreen().bounds.size.height - point.y
        
        let originX = (screenWidth - maxWidth) / 2
        let originY = (screenHeight - maxHeight) / 2
        
        super.init(frame: CGRectMake(originX, originY, maxWidth, maxHeight))
        self.backgroundColor = UIColor.clearColor()
        
        self.layer.addSublayer(logoLayer)
    }
    
    public class func showLoading(fromView view: UIView, screenAdjustment point: CGPoint) {
        let loadingView = EtsuriLoaderView(screenAdjustment: point)
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
