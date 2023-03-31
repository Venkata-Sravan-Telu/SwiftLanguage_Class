//
//  ViewController.swift
//  Telu_WordGuess
//
//  Created by Telu,Venkata Sravan on 3/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    var words = ["car","wallet","samsung","eiffeltower","river"]
    var descList = ["a four wheeler","a thing where money and cards are stored","a phone company","a famous attraction in Paris","a moving water body"]
    var photos = ["car","wallet","samsung","eiffel","river"]

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBAction func guessLetterFieldAction(_ sender: UITextField) {
        var textEnterd = guessLetterField.text!;
                //Consider only the last character by calling textEntered.last and trimming the white spaces.
                textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEnterd
                
                //Check whether the entered text is empty or not to enable check button.
                if textEnterd.isEmpty{
                    guessLetterButtonOL.isEnabled = false
                }
                else{
                    guessLetterButtonOL.isEnabled = true
                }

    }
    
    @IBOutlet weak var guessLetterButtonOL: UIButton!
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        word = word.uppercased()
        var letter = guessLetterField.text!
        letter = letter.uppercased()
        lettersGuessed = lettersGuessed + letter
        lettersGuessed = lettersGuessed.uppercased()
        var revealedWord = ""
        guesses+=1
        print("\(letter) \(lettersGuessed)")
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
                
            }
            else{
                revealedWord += "_ "
                }
            }
        if (guesses != 10){
            if (guesses==0){
                guessCountLabel.text! = ""
            }
            guessCountLabel.text! = "You have made \(guesses) guesses"
        }
        else{
            guesses = 0
            guessCountLabel.text! = "You have used all the available guesses, Please play again"
            PlayAgainButton.isHidden = false
        }
        
        userGuessLabel.text = revealedWord
        guessLetterField.text = ""
        
        if userGuessLabel.text!.contains("_") == false{
            displayImage.image = UIImage(named: photos[count])
            guessCountLabel.text! = "Wow! You have made \(guesses) guesses to guess the word!"
            PlayAgainButton.isHidden = false;
            guessLetterButtonOL.isEnabled = false;
                }
        guessLetterButtonOL.isEnabled = false
    }
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    var wordCount = 0
    var wordsRemaining = 5
    var guesses = 0
    var maxNumOfWrongGuesses = 10
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        PlayAgainButton.isHidden = true
        //clear the label
        lettersGuessed = ""
        if userGuessLabel.text!.contains("_") == false{
            if (wordCount == 5){
                wordCount = 0
                wordsRemaining = 5
                statusLabel.text! = ""
            }
            else{
            count += 1
                guesses = 0}
        }
        
        
        
        displayImage.image = UIImage(named: "")
        //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
        if count == words.count{
            statusLabel.text = "Congruations! You are done with the game!"
            //clearing the labels.
            guessCountLabel.text! = ""
            guessLetterField.isEnabled = false
            PlayAgainButton.isHidden = false
            displayImage.image = UIImage(named: "alldone")
            wordCount+=1
            wordsRemaining-=1
            let k1 = "Total number of words guessed successfully: "
            let k2 = "Total number of words remaining in game: "
            wordsGuessedLabel.text! = k1 + "0"
            wordsRemainingLabel.text! = k2 + "5"
            userGuessLabel.text = ""
            hintLabel.text = ""
            count = 0
            
        }
        else{
                    //fetch the next word from the array
            wordCount+=1
            wordsRemaining-=1
            let k1 = "Total number of words guessed successfully: "
            let k2 = "Total number of words remaining in game: "
            wordsGuessedLabel.text! = k1 + String(wordCount)
            wordsRemainingLabel.text! = k2 + String(wordsRemaining)
            guessCountLabel.text! = ""
            
                    word = words[count]
            desc = descList[count]
                    //fetch the hint related to the word
                    hintLabel.text = "Hint: "
                    hintLabel.text! += desc
                    //Enabling the check button.
            guessLetterButtonOL.isEnabled = true
                    
                    userGuessLabel.text = ""
                    updateUnderscores()
                }
    }
    var count = 0
    var word = ""
    var desc = ""
    var lettersGuessed = ""
    
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guessLetterButtonOL.isEnabled = false
        PlayAgainButton.isHidden = true
        word = words[count]
        desc = descList[count]
        userGuessLabel.text = ""
        updateUnderscores();
        hintLabel.text = "Hint: "+desc
        statusLabel.text = ""
        totalWordsLabel.text! += String(words.count)
        wordsGuessedLabel.text! += String(wordCount)
        wordsRemainingLabel.text! += String(wordsRemaining)
    }

    func updateUnderscores(){
        for letter in word{
                    userGuessLabel.text! += "_ "
                }
    }

}

