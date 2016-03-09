//
//  IC_Timer.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/3/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_Timer: WKInterfaceController {

    var running = false
    
    @IBOutlet var timer: WKInterfaceTimer!
    @IBOutlet var btnTimer: WKInterfaceButton!
    
    @IBAction func startStop() {
        if running {
            timer.stop()
            timer.setTextColor(UIColor.redColor())
            btnTimer.setTitle("Start")
            running = false
        }
        else {
            timer.setDate(NSDate())
            timer.start()
            timer.setTextColor(UIColor.greenColor())
            btnTimer.setTitle("Stop")
            running = true
        }
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
