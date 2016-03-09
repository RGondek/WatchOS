//
//  IC_MediaPlayer.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/9/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_MediaPlayer: WKInterfaceController {

    @IBOutlet var player: WKInterfaceMovie!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        guard let url = NSBundle.mainBundle().URLForResource("giphy", withExtension: "mov") else { return }
        
        player.setMovieURL(url)
        
        
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
