//
//  ViewController.swift
//  SampleCalc
//
//  Created by Telu,Venkata Sravan on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultOutlet: UILabel!
    var operand1 = -1.1
    var operand2 = -1.2
    var _operator = " "
    
    @IBAction func button5Clicked(_ sender: Any) {
        resultOutlet.text = "5"
        if operand1 == -1.1{
            operand1=5
        }
        else{
            operand2=5
        }
    }
    
    
    @IBAction func buttonPlusClicked(_ sender: Any) {
        resultOutlet.text = "+"
        if _operator == " "{
            _operator = "+"
        }
    }
    
    
    @IBAction func button3Clicked(_ sender: Any) {
        resultOutlet.text = "3"
        if operand1 == -1.1{
            operand1=3
        }
        else{
            operand2=3
        }
    }
    
    
    @IBAction func buttonEqualsClicked(_ sender: Any) {
        resultOutlet.text = "="
        if _operator == "+"{
            resultOutlet.text = "\(operand1+operand2)"
        }
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        resultOutlet.text = " "
        operand1 = -1.1
        operand2 = -1.2
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

