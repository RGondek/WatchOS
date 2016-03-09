//
//  IC_ImageAnimation.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/8/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_ImageAnimation: WKInterfaceController {

    @IBOutlet var img: WKInterfaceImage!
    @IBAction func sliderChange(value: Float) {
        img.startAnimatingWithImagesInRange(NSMakeRange(1, 9), duration: NSTimeInterval(3/value), repeatCount: -1)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        img.setImageNamed("Mega")
        img.startAnimatingWithImagesInRange(NSRange.init(location: 1, length: 9), duration: 1, repeatCount: -1)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
