//
//  ViewController.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if WCSession.isSupported() {
            
            WCSession.defaultSession().delegate = self
            
            WCSession.defaultSession().activateSession()
            
        }
        else {
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void) {
        guard let color = message["color"] as? String else {
            print(__FUNCTION__, "Nem Rolou")
            return
        }
        
        var cor: UIColor!
        
        switch color {
        case "red": cor = UIColor.redColor()
        case "blue": cor = UIColor.blueColor()
        case "green": cor = UIColor.greenColor()
        case "orange": cor = UIColor.orangeColor()
        default: break
        }
        
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            self.view.backgroundColor = cor
        }
        
        
        
    }
}

