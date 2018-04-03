//
//  ViewControllerTest.swift
//  ixam
//
//  Created by Royson Lin on 2/17/18.
//  Copyright © 2018 crej. All rights reserved.
//

import UIKit

class ViewControllerTest: UIViewController {
    
    @IBOutlet weak var letterLabel: UILabel!
    
    var letter: String = allLetters.LettersList[allLetters.index]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        letterLabel.text = letter
        // letterLabel.font = UIFont(name: "Courier-Bold", size: 100.0)
        letterLabel.font = letterLabel.font.withSize(100)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "presentLetter") {
//            let destinationVC = segue.destination as! ViewControllerAnswer
//            destinationVC.correctAnswer = letterLabel.text!
            allLetters.correctAnswer = letterLabel.text!
        }
    }
}






