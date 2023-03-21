//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Telu,Venkata Sravan on 3/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    var wordArray = ["Toyota","Avacado","Gold","Newton","Winter","Bearcat","Windows"]
    var count = 0
    var wordDescriptionArray = ["A Japanese car manufacturing company","A fruit in green color","A scientist who discovered gravity","A precious yellow metal","A season which is cold","Mascot of NWMSU","An operating system"]
    var word = ""

    @IBOutlet weak var guessWordDisplayed: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var letterEntered: UITextField!
    
    @IBAction func checkLetter(_ sender: UITextField) {
        
    }
    
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        if letterEntered.text! != " "{
            checkButtonOutlet.isEnabled = true
        }
        else{
            checkButtonOutlet.isEnabled = false
        }
    }
    
    @IBOutlet weak var checkButtonOutlet: UIButton!
    
    @IBOutlet weak var completedGameLabel: UILabel!
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        if (count == wordArray.count-1){
            playAgainOutlet.isHidden = false
            completedGameLabel.text! = "Congrats! The game is over"
        }
        else{
            playAgainOutlet.isHidden = true
            completedGameLabel.text! = ""
        }
    }
    
    @IBOutlet weak var playAgainOutlet: UIButton!
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        word = wordArray[count]
        for letter in word{
            guessWordDisplayed.text! += "_ "
        }
        hintLabel.text = "Hint: " + wordDescriptionArray[count]
        checkButtonOutlet.isEnabled = false
        playAgainOutlet.isEnabled = false
        
    }


}

