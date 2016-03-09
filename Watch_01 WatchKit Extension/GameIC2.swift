//
//  GameIC2.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation

class GameIC2: WKInterfaceController {
    let pageNum = 1
    let gm = GameManager.GM
    
    @IBOutlet var outBtn: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if gm.bugPage == pageNum {
            outBtn.setTitle("🐥")
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func bugBtn() {
        if gm.bugPage == pageNum {
            outBtn.setTitle("")
            gm.killBug(pageNum)
        }
        else {
            print("EROU!")
        }
    }
}
