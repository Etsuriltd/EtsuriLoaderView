//
//  ViewController.swift
//  EtsuriLoaderView
//
//  Created by wahyu sumartha on 08/25/2016.
//  Copyright (c) 2016 wahyu sumartha. All rights reserved.
//

import UIKit
import EtsuriLoaderView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        
        EtsuriLoaderView.showLoading(fromView: self.view, screenAdjustment: CGPointMake(0, 0))
        
        let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 4 * Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            EtsuriLoaderView.hideLoadingView(fromView: self.view)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

