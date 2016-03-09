//
//  IC_Alert.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/4/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_Alert: WKInterfaceController {

    @IBAction func btnAlert() {
        let action1 = WKAlertAction(title: "Sim", style: .Default) { () -> Void in
            print("HELL YEAH!")
        }
        let action2 = WKAlertAction(title: "Não", style: .Destructive) { () -> Void in
            print("HELL NO!")
        }
        let action3 = WKAlertAction(title: "Cancel", style: .Cancel) { () -> Void in
            print("Fuck this SHIT!")
        }
        presentAlertControllerWithTitle("teste", message: "Alerta cara!!", preferredStyle: .ActionSheet, actions: [action1, action2, action3])
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
