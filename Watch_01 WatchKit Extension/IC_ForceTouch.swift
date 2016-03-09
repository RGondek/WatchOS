//
//  IC_ForceTouch.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/9/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_ForceTouch: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        addMenuItemWithImage(UIImage(named: "slice13")!, title: "Pizza", action: "comer")
        addMenuItemWithImageNamed("Mega7", title: "Correr", action: "run")
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
    
    func comer() {
        print(__FUNCTION__, "PIZZA TIME!!!")
    }
    
    func run() {
        print(__FUNCTION__, "RUN FOREST, RUN!!")
    }

}
