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
    
    let letters: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    let fontSizes: [Double] = [15.2, 13.0, 10.8, 8.7, 6.5, 4.3, 3.3, 2.1]
    let scores: [String] = ["20/200", "20/100", "20/70", "20/50", "20/40", "20/30", "20/25", "20/20"]
    var level: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let index: Int = Int(arc4random_uniform(26))
        let letter: String = letters[index]
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
            let destinationVC = segue.destination as! ViewControllerAnswer
            destinationVC.correctAnswer = letterLabel.text!
        }
    }
}
