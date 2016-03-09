//
//  InterfaceController2.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController_Table
: WKInterfaceController {

    @IBOutlet var namesTable: WKInterfaceTable!
    
    let names = ["João", "Felipe", "Rubens", "Omella", "Faganello"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        namesTable.setNumberOfRows(names.count, withRowType: "NamesController")
        
        
        for (index, item) in names.enumerate() {
            let namesController = namesTable.rowControllerAtIndex(index) as!NamesController
            
            namesController.lblNome.setText(item)
        }
        
        // Configure interface objects here.
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        pushControllerWithName("IC_TableDetail", context: names[rowIndex])
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
