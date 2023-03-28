//
//  ViewController.swift
//  Telu_SearchApp
//
//  Created by Telu,Venkata Sravan on 3/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    var topics_array  = [["virat","rohit", "surya","ashwin","jadeja"],["tajmahal","hampi","charminar","qutub minar","indiagate"],["lion","whitetiger","elephant","cheetah","rhino"]]
    
    var desc = [["Virat Kohli is an Indian international cricketer and the former captain of the India","Rohit Sharma is an Indian international cricketer and the current captain of India men’s cricket team","Suryakumar Ashok Yadav also known by the initialism SKY, is an Indian international cricketer","Ravichandran Ashwin is an Indian international cricketer who plays for the Indian cricket team","Ravindra Jadeja is an all-rounder, who bats left-handed and bowls left-arm orthodox spin" ],["The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in India","Hampi temple is the most artistically sophisticated Hindu temple in Hampi, and is part of the sacred centre of Vijayanagara","The Charminar ( lit. 'four minarets') is a monument located in Hyderabad, Telangana, India","The Qutb Minar, also spelled Qutub Minar and Qutab Minar, is a minaret and victory tower that forms part of the Qutb complex","The Gateway of India is one of India's most unique landmarks situated in the city of Mumbai. The colossal structure was constructed in 1924"],["The lion is a large cat of the genus Panthera native to Africa and India","The white tiger or bleached tiger is a leucistic pigmentation variant of the Mainland tiger","Elephants are the largest existing land animals.They are the only surviving members of the family Elephantidae and the order Proboscidea","The cheetah is a large cat native to Africa and Southwest Asia. It is the fastest land animal, capable of running at 80 to 98 km/h","A rhinoceros, commonly abbreviated to rhino, is a member of any of the five extant species of odd-toed ungulates in the family Rhinocerotidae"]]
    
    var topicCount = 0
    var imageCount = 0
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        searchButtonOutlet.isEnabled = true
    }
    
    @IBOutlet weak var searchButtonOutlet: UIButton!
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        // Please type following words in search
        let input = searchTextField.text!
        if (input.contains("Cricketers")){
            topicCount = 0
            imageCount = 0
            prevBtn.isHidden = false
            nextBtn.isHidden = false
            resetBtn.isHidden = false
            prevBtn.isEnabled = false
            topicInfoText.isHidden = false
            updateSubTopic(topicCount,imageCount)
            
        }
        else if (input.contains("Places")){
            topicCount = 1
            imageCount = 0
            prevBtn.isHidden = false
            nextBtn.isHidden = false
            resetBtn.isHidden = false
            topicInfoText.isHidden = false
            prevBtn.isEnabled = false
            updateSubTopic(topicCount,imageCount)
            
        }
        else if (input.contains("Animals")){
            topicCount = 2
            imageCount = 0
            prevBtn.isHidden = false
            nextBtn.isHidden = false
            resetBtn.isHidden = false
            topicInfoText.isHidden = false
            prevBtn.isEnabled = false
            updateSubTopic(topicCount,imageCount)
        }
        else{
            resultImage.image = UIImage(named: "notfound")
        }
        
    }
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBAction func ShowNextImagesBtn(_ sender: UIButton) {
        imageCount += 1
        prevBtn.isEnabled = true
        updateSubTopic(topicCount,imageCount)
        if (imageCount == topics_array[0].count-1){
            prevBtn.isEnabled = true
            nextBtn.isEnabled = false
        }
    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        imageCount -= 1
        updateSubTopic(topicCount,imageCount)
        if (imageCount==0){
            prevBtn.isEnabled = false
            nextBtn.isEnabled = true
        }
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        imageCount = 0
        topicCount = 0
        intro()
    }
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        intro()
    }
    
    func updateSubTopic(_ topicCount:Int,_ imageCount:Int){
        resultImage.image = UIImage(named: topics_array[topicCount][imageCount])
        topicInfoText.text = desc[topicCount][imageCount]
    }
    
    func intro(){
        resultImage.image = UIImage(named: "welcome")
        nextBtn.isHidden = true
        resetBtn.isHidden = true
        prevBtn.isHidden = true
        searchButtonOutlet.isEnabled = false
        topicInfoText.isHidden = true
    }

}

