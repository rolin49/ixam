//
//  ViewControllerAnswer.swift
//  ixam
//
//  Created by Royson Lin on 2/17/18.
//  Copyright © 2018 crej. All rights reserved.
//

import UIKit

class ViewControllerAnswer: UIViewController {

    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    var correctAnswer: String = ""
    var index: Int = Int(arc4random_uniform(26))
    let letters: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index: Int = Int(arc4random_uniform(4))
        
        // Do any additional setup after loading the view.
        switch index {
        case 0:
            answerButton1.setTitle(correctAnswer, for: UIControlState.normal)
            var letter: String = letters[index]
            answerButton2.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton3.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton4.setTitle(letter, for: UIControlState.normal)
            break
        case 1:
            answerButton2.setTitle(correctAnswer, for: UIControlState.normal)
            var letter = letters[index]
            answerButton1.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton3.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton4.setTitle(letter, for: UIControlState.normal)
            break
        case 2:
            answerButton3.setTitle(correctAnswer, for: UIControlState.normal)
            var letter: String = letters[index]
            answerButton1.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton2.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton4.setTitle(letter, for: UIControlState.normal)
            break
        case 3:
            answerButton4.setTitle(correctAnswer, for: UIControlState.normal)
            var letter: String = letters[index]
            answerButton1.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton2.setTitle(letter, for: UIControlState.normal)
            letter = letters[index]
            answerButton3.setTitle(letter, for: UIControlState.normal)
            break
        default: break
        }
        


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
