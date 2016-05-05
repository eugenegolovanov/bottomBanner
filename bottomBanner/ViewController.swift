//
//  ViewController.swift
//  bottomBanner
//
//  Created by eugene golovanov on 5/4/16.
//  Copyright © 2016 eugene golovanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let banner = HartBottomBanner()
        banner.showBanner(messageText: "someText", masterView: self.view, isSuccess: true)
        
    }


    
    
    
    
    @IBAction func showBannerAction(sender: UIButton) {
        self.pushMessageAnimation("foo bla")
        
    }

    @IBAction func switchBannerType(sender: UISwitch) {
    }
    
    
    
    
    
    
    
    func pushMessageAnimation(messageText:String) {
        
        let bannerHeight:CGFloat = 35.0
        let someFrame = CGRect(
            x: 0,
            y: self.view.frame.size.height - bannerHeight,
            width: self.view.frame.size.width,
            height: bannerHeight)
        
        
        
        
        let bannerView = UIView(frame: someFrame)
        bannerView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(bannerView)
        
        
        
//        // Label for message text
//        var incomeMessageLabel = UILabel(frame: CGRect(
//            x: 0,
//            y: 0,
//            width: self.view.frame.size.width,
//            height:self.view.frame.size.height/12))
//        incomeMessageLabel.textColor = UIColor.whiteColor()
//        incomeMessageLabel.text = messageText
//        incomeMessageLabel.font = UIFont.systemFontOfSize(12.0)
//        incomeMessageLabel.backgroundColor = UIColor.clearColor()
//        incomeMessageLabel.textAlignment = NSTextAlignment.Center
//        incomeMessageLabel.numberOfLines = 0
//        
//        
//        
//        
//        
//        //hiding views
//        blurEffectView.center.x -= view.bounds.width
//        
//        
//        
//        
//        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.4,
//                                   initialSpringVelocity: 0.7, options: nil, animations: {
//                                    blurEffectView.center.x += self.view.bounds.width
//                                    
//        }) { (complection: Bool) -> Void in
//            //
//            UIView.animateWithDuration(0.2, delay: 2.0, options: .CurveEaseOut, animations: { () -> Void in
//                //                    blurEffectView.center.y += blurEffectView.frame.size.height
//                blurEffectView.center.y -= blurEffectView.frame.size.height + UIApplication.sharedApplication().statusBarFrame.size.height
//                
//            }) { (complection: Bool) -> Void in
//                blurEffectView.removeFromSuperview()
//            }
//            
//        }
//        
//        
//        
//        
//        
    }

}

