//
//  IC_TableDetail.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/3/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_TableDetail: WKInterfaceController {

    @IBOutlet var lblNome: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        guard let name = context as? String else {
            return
        }
        
        lblNome.setText(name)
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
