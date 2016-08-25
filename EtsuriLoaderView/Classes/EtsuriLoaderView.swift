//
//  ELoadingAnimationView.swift
//  ELoaderView
//
//  Created by Wahyu Sumartha  on 25/08/2016.
//  Copyright © 2016 etsuri. All rights reserved.
//

import UIKit

public class EtsuriLoaderView: UIView {

    public static let instance = EtsuriLoaderView()
    
    private let logoLayer = LogoLayer()
    
    public init() {
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        let originX = (screenWidth - maxWidth) / 2
        let originY = (screenHeight - maxHeight) / 2
        
        super.init(frame: CGRectMake(originX, originY, maxWidth, maxHeight))
        self.backgroundColor = UIColor.clearColor()
       
        self.layer.addSublayer(logoLayer)
    }
    
    public class func showLoading(fromView view: UIView) {
        let loadingView = EtsuriLoaderView.instance
        view.addSubview(loadingView)
    }
    
    public class func hideLoadingView(fromView view: UIView) {
        let loadingView = EtsuriLoaderView.instance
        view.willRemoveSubview(loadingView)
        loadingView.removeFromSuperview()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
