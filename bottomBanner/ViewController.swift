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
        
        
        let successfullString = "Your step goal has been successfully saved"
        let informationalString = "Your settings were not saved"
        
        let banner = HartBottomBanner()
        banner.showBanner(messageText: informationalString, masterView: self.view, isSuccess: false, target: self)//INFORMATIONAL
//        banner.showBanner(messageText: successfullString, masterView: self.view, isSuccess: true, target: self)//SUCCESS

    }


    
    
    
    
    @IBAction func showBannerAction(sender: UIButton) {
        
    }

    @IBAction func switchBannerType(sender: UISwitch) {
    }
    
    
    
    
    
    func buttonPressed() {
        print("Button Pressed Successfully")
    }
    
    

}

