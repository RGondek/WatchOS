//
//  GameManager.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/2/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import Foundation
import UIKit

class GameManager {
    static let GM = GameManager()
    
    var bugPage: Int! = 0
    var timeLeft: Int!
    var score: Int! = 0
    
    init() {
        bugPage = random()%3
    }

    
    func killBug(currentPage: Int) {
        score = score + 1
        print(score)
        while bugPage == currentPage {
            bugPage = random()%3
        }
    }
}