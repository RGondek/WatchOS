//
//  GlanceController.swift
//  Watch_01 WatchKit Extension
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {

    @IBOutlet var topLabel: WKInterfaceLabel!
    @IBOutlet var largeTopLabel: WKInterfaceLabel!
    @IBOutlet var largeBottomLabel: WKInterfaceLabel!
    @IBOutlet var footerLabel: WKInterfaceLabel!
    
    var counterTop = 1
    var counterBottom = 100
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateNumbers", userInfo: nil, repeats: true)
        // Configure interface objects here.
    }

    func updateNumbers() {
        largeTopLabel.setText("\(counterTop++)")
        largeBottomLabel.setText("\(counterBottom--)")
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
