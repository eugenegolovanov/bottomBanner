//
//  ViewController.swift
//  bottomBanner
//
//  Created by eugene golovanov on 5/4/16.
//  Copyright © 2016 eugene golovanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bannerTypeSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }


    
    
    
    
    @IBAction func showBannerAction(sender: UIButton) {
        let successfullString = "Your step goal has been successfully saved"
        let informationalString = "Your settings were not saved"
        
        if bannerTypeSwitch.on == true {
            
            let banner = HartBottomBanner()
            banner.showBanner(messageText: successfullString, masterView: self.view, bannerStyle: bottomBannerStyle.Success.rawValue, target: self)//SUCCESS

        } else {
            
            let banner = HartBottomBanner()
            banner.showBanner(messageText: informationalString, masterView: self.view, bannerStyle:bottomBannerStyle.Informational.rawValue, target: self)//INFORMATIONAL
        }
        

        
    }

    @IBAction func switchBannerType(sender: UISwitch) {
        
    }
    
    
    
    
    
    func bottomBannerButtonPressed() {
        print("Button Pressed Successfully")
    }
    
    

}

