//
//  InterfaceController.swift
//  Watch_01 WatchKit Extension
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    var i: Float = 0.0

    @IBOutlet var valueLBL: WKInterfaceLabel!
    @IBAction func slider(value: Float) {
        valueLBL.setText("\(value)")
        i = value
    }
    
    @IBAction func printBtn() {
        print( "Valor: \(i)")
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
