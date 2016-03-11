//
//  IC_PewPew.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/10/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation

class IC_PewPew: WKInterfaceController {

    var player: WKAudioFilePlayer!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let url = NSBundle.mainBundle().URLForResource("pew-pew-lei", withExtension: "caf")
        
        let asset = WKAudioFileAsset(URL: url!)
        let playerItem = WKAudioFilePlayerItem(asset: asset)
        player = WKAudioFilePlayer(playerItem: playerItem)
        
        // Configure interface objects here.
    }
    
    @IBOutlet var btnPew: WKInterfaceButton!
    
    @IBAction func shoot() {
        animateWithDuration(0.1) { () -> Void in
            self.btnPew.setBackgroundColor(UIColor.redColor())
        }
        player.play()
        animateWithDuration(0.1) { () -> Void in
            self.btnPew.setBackgroundColor(UIColor.blackColor())
        }
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
