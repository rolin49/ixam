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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index: Int = Int(arc4random_uniform(4))
        let index1: Int = Int(arc4random_uniform(4))
        let index2: Int = Int(arc4random_uniform(4))
        
        // Do any additional setup after loading the view.
        switch index {
        case 0:
            answerButton1.setTitle(allLetters.correctAnswer, for: UIControlState.normal)
            var letter: String = allLetters.LettersList[index]
            answerButton2.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index1]
            answerButton3.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index2]
            answerButton4.setTitle(letter, for: UIControlState.normal)
            break
        case 1:
            answerButton2.setTitle(allLetters.correctAnswer, for: UIControlState.normal)
            var letter = allLetters.LettersList[index]
            answerButton1.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index1]
            answerButton3.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index2]
            answerButton4.setTitle(letter, for: UIControlState.normal)
            break
        case 2:
            answerButton3.setTitle(allLetters.correctAnswer, for: UIControlState.normal)
            var letter: String = allLetters.LettersList[index]
            answerButton1.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index1]
            answerButton2.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index2]
            answerButton4.setTitle(letter, for: UIControlState.normal)
            break
        case 3:
            answerButton4.setTitle(allLetters.correctAnswer, for: UIControlState.normal)
            var letter: String = allLetters.LettersList[index]
            answerButton1.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index1]
            answerButton2.setTitle(letter, for: UIControlState.normal)
            letter = allLetters.LettersList[index2]
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
