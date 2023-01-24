//
//  ViewController.swift
//  HelloApp
//
//  Created by Telu,Venkata Sravan on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputNameOutlet: UITextField!
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    @IBOutlet weak var inputLastNameOutlet: UITextField!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //read the input name and store it
        //assigning it to a variable
        //Perform string interpolation (Hello, name!) and assign it to the display
        var input = inputNameOutlet.text!
        var lastInput = inputLastNameOutlet.text!
        displayLabelOutlet.text = "Hello, \(input) \(lastInput) !"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

