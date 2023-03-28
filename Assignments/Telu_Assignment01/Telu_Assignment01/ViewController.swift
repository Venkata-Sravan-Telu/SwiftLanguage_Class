//
//  ViewController.swift
//  Telu_Assignment01
//
//  Created by Telu,Venkata Sravan on 1/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        // Storing the variables of all text fields and printing it in resp labels
        var firstName = firstNameOutlet.text!
        var lastName = lastNameOutlet.text!
        var year = yearOutlet.text!
        fullNameLabel .text = "Full Name: \(lastName) \(firstName)"
        initialsLabel.text = "Initials: \(lastName.first!) \(firstName.first!)"
        var intYear = Int(year) ?? 0
        var currentYear = Calendar(identifier: .gregorian).dateComponents([.year], from: .now).year ?? 0
        var age = currentYear-intYear
        ageLabel.text = "Age: \(age)"
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        fullNameLabel.text = ""
        initialsLabel.text=""
        ageLabel.text=""
        firstNameOutlet.text=""
        lastNameOutlet.text=""
        yearOutlet.text=""
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

