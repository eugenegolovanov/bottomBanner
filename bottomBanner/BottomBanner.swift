//
//  BottomBanner.swift
//  bottomBanner
//
//  Created by eugene golovanov on 5/4/16.
//  Copyright © 2016 eugene golovanov. All rights reserved.
//

import UIKit



class HartBottomBanner  {

    
    
    /// This function creates bottom banner for masterView.
    ///
    /// **Warning:** Make sure that target has button Selector Method. OR app will crash
    ///
    /// Usage:
    ///
    ///        let banner = HartBottomBanner()
    ///        banner.showBanner(messageText: informationalString, masterView: self.view, isSuccess: false, target: self)
    ///
    /// :param: isSuccess if false - creates button and bg color for banner will be dark. If it is true bg will be green and no button
    ///
    /// :returns: nothing
    func showBanner(messageText messageText:String , masterView:UIView, isSuccess:Bool, target: AnyObject) {

        //Constants
        var bannerColor = UIColor.clearColor()
        let bannerHeight:CGFloat = 35.0
        let bannerFrame = CGRect(
            x: 0,
            y: masterView.frame.size.height - bannerHeight,
            width: masterView.frame.size.width,
            height: bannerHeight)

        //Banner itself
        let bannerView = UIView(frame: bannerFrame)
        masterView.addSubview(bannerView)
        masterView.bringSubviewToFront(bannerView)

        
        //////////////////Check ifSuccess Call ////////////////////////////
        var textFrame:CGRect
        if isSuccess == true {
            //If TRUE
            let textWidthMargin:CGFloat = 35.8
            textFrame = CGRectMake(textWidthMargin,
                                   8.0,
                                   masterView.frame.size.width-textWidthMargin*2,
                                   bannerHeight-16.5)
            bannerColor = UIColor(red: 58.0/255, green: 201.0/255, blue: 92.0/255, alpha: 1.0)

        } else {
            //IF FALSE
            textFrame = CGRectMake(16,
                                   8.0,
                                   202,
                                   bannerHeight-16.5)
            bannerColor = UIColor(red: 65.0/255, green: 72.0/255, blue: 77.0/255, alpha: 1.0)
            
            //Button
            let button   = UIButton.init(type: UIButtonType.System)
            button.frame = CGRectMake(masterView.frame.size.width-50, 8, 34, 18)
            button.backgroundColor = UIColor.clearColor()
            button.setTitle("Retry", forState: UIControlState.Normal)
            button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)
            button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            //WARNING... Make sure that target has Selector Method. OR app will crash
            button.addTarget(target, action: Selector("buttonPressed"), forControlEvents: UIControlEvents.TouchUpInside)///WORKS
            bannerView.addSubview(button)

        }

        
        
        
        bannerView.backgroundColor = bannerColor

        
        
        
        
        
        //Textmessage
        let bannerTextview = UILabel(frame: textFrame)
        bannerTextview.text = messageText
        bannerTextview.textColor = UIColor.whiteColor()
        bannerTextview.textAlignment = NSTextAlignment.Center
        bannerTextview.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)
        bannerTextview.backgroundColor = UIColor.clearColor()
        
        
        bannerView.addSubview(bannerTextview)
        
        
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
    
    

    deinit {
        print("DDDEEEEIIINNNIIITTTED")
    }
}

