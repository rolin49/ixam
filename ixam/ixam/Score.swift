//
//  Score.swift
//  ixam
//
//  Created by Joonhwa Kim on 4/2/18.
//  Copyright © 2018 crej. All rights reserved.
//

import UIKit

let allScores = Score()

class Score: NSObject {
    
    var scores: [Double:String] = [
        15.2: "20/200",
        13.0: "20/100",
        10.8: "20/70",
        8.7: "20/50",
        6.5: "20/40",
        4.3: "20/30",
        3.3: "20/25",
        2.1: "20/20"
    ]
    
    func setScoresList(dict: [Double:String]) {
        self.scores = dict
    }
    
    var level: Int = 0
    
}
