//
//  ViewController.swift
//  Vowel
//
//  Created by Telu,Venkata Sravan on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputWordOutlet: UITextField!
    
    @IBOutlet weak var outputLabelOutlet: UILabel!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //Taking input from user and storing it in local var
        //Checking the word whether it is vowel or not and printing it
        
        var word = inputWordOutlet.text!
        var others=0
        var vowel = 0
        for i in word{
            switch i.lowercased(){
            case "a","e","i","o","u":
                vowel+=1
                outputLabelOutlet.text = "\(word) contains a vowel 😃"
            default:
                others+=1
            }
            if vowel==0{
                outputLabelOutlet.text = "\(word) does not contain a vowel ☹️"
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

