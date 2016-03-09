//
//  IC_Connectivity.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/9/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class IC_Connectivity: WKInterfaceController, WCSessionDelegate {
    
    @IBAction func redBtn() {
        WCSession.defaultSession().sendMessage(["color":"red"], replyHandler: { (_ :[String : AnyObject]) -> Void in
            print(__FUNCTION__)
            }) { (error: NSError) -> Void in
                print(__FUNCTION__, error)
        }
    }
    
    @IBAction func orangeBtn() {
        WCSession.defaultSession().sendMessage(["color":"orange"], replyHandler: { (_ :[String : AnyObject]) -> Void in
            print(__FUNCTION__)
            }) { (error: NSError) -> Void in
                print(__FUNCTION__, error)
        }
    }

    @IBAction func blueBtn() {
        WCSession.defaultSession().sendMessage(["color":"blue"], replyHandler: { (_ :[String : AnyObject]) -> Void in
            print(__FUNCTION__)
            }) { (error: NSError) -> Void in
                print(__FUNCTION__, error)
        }
    }
    
    @IBAction func greenBtn() {
        WCSession.defaultSession().sendMessage(["color":"green"], replyHandler: { (_ :[String : AnyObject]) -> Void in
            print(__FUNCTION__)
            }) { (error: NSError) -> Void in
                print(__FUNCTION__, error)
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if WCSession.isSupported() {
            WCSession.defaultSession().delegate = self
            
            WCSession.defaultSession().activateSession()
        }
        else {
            
        }
        
        
        
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
