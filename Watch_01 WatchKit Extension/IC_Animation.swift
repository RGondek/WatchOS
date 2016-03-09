//
//  IC_Animation.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/8/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation

class IC_Animation: WKInterfaceController {
    
    @IBOutlet var circle: WKInterfaceGroup!
    @IBOutlet var firstScreen: WKInterfaceGroup!
    
    @IBAction func leftBtn() {
        animateWithDuration(0.5) { () -> Void in
            self.circle.setHorizontalAlignment(.Left)
        }
    }
    @IBAction func rightBtn() {
        animateWithDuration(0.5) { () -> Void in
            self.circle.setHorizontalAlignment(.Right)
        }
    }
    @IBAction func upBtn() {
        animateWithDuration(0.5) { () -> Void in
            self.circle.setVerticalAlignment(.Top)
        }
    }
    @IBAction func downBtn() {
        animateWithDuration(0.5) { () -> Void in
            self.circle.setVerticalAlignment(.Bottom)
        }
    }
    
    @IBAction func pushBtn() {
        animateWithDuration(0.1, animations: { () -> Void in
            self.firstScreen.setAlpha(0)
        })
        
        animateWithDuration(0.3, animations: { () -> Void in
            self.firstScreen.setWidth(0)
        })
    }
    
    @IBAction func popBtn() {
        animateWithDuration(0.3, animations: { () -> Void in
            self.firstScreen.setRelativeWidth(1, withAdjustment: 0)
        })
        
        animateWithDuration(0.1, animations: { () -> Void in
            self.firstScreen.setAlpha(1)
        })
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
