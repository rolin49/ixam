//
//  Letters.swift
//  ixam
//
//  Created by Joonhwa Kim on 4/2/18.
//  Copyright © 2018 crej. All rights reserved.
//

import UIKit


let allLetters = Letters()

class Letters: NSObject {
    
    var LettersList: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    func setLettersList(array: [String]) {
        self.LettersList = array
    }
    
    func addToLettersList(item: String) {
        self.LettersList.append(item)
    }
    
    var correctAnswer: String = ""
    var index: Int = Int(arc4random_uniform(26))

}
