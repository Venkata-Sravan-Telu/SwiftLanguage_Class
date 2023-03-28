//
//  ViewController.swift
//  Telu_CalculatorApp
//
//  Created by Telu,Venkata Sravan on 2/15/23.
//

import UIKit

class ViewController: UIViewController {
    var operand1 = -1.1
    var operand2 = -2.2
    var _operator = " "
    var store:Double = 0
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
        operand1 = -1.1
        operand2 = -2.2
        _operator = " "
        store = 0
        resultOutlet.text!=""
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        if operand1 != -1.1 && operand2 == -2.2{
            operand1 = Double(resultOutlet.text!) ?? 0
            let oper1 = Int(operand1/10)
            operand1 = Double(oper1)
            resultOutlet.text! = "\(oper1)"
        }
        else if operand1 != -1.1 && operand2 != -2.2{
            operand2 = Double(resultOutlet.text!) ?? 0
            let oper2 = Int(operand2/10)
            operand2 = Double(oper2)
            resultOutlet.text! = "\(oper2)"
        }
    }
    
    @IBAction func buttonPlusOrMinus(_ sender: UIButton) {
        if operand1 == -1.1 || operand1 != -1.1 && _operator == " "{
            operand1 = Double(resultOutlet.text!) ?? 0
            operand1 = -(operand1)
            let oper1Int = Int(operand1)
            if operand1 == Double(oper1Int){
                resultOutlet.text!="\(oper1Int)"
            }
            else{
            resultOutlet.text!="\(operand1)"
            }
        }
        else if operand2 == -2.2 || operand2 != -2.2 && _operator != " "{
            operand2 = Double(resultOutlet.text!) ?? 0
            operand2 = -(operand2)
            let oper2Int = Int(operand2)
            if operand2 == Double(oper2Int){
                resultOutlet.text!="\(oper2Int)"
            }
            else{
            resultOutlet.text!="\(operand2)"
            }
        }
        
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        store=operand1
        resultOutlet.text!=""
        _operator = "/"
        
    }
    
    @IBAction func button7(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("7")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("7")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("7")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("7")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func button8(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("8")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("8")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("8")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("8")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func button9(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("9")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("9")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("9")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("9")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        store=operand1
        resultOutlet.text!=""
        _operator = "*"
    }
    
    @IBAction func button4(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("4")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("4")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("4")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("4")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func button5(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("5")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("5")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("5")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("5")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func button6(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("6")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("6")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("6")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("6")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        store=operand1
        resultOutlet.text!=""
        _operator = "-"
    }
    
    @IBAction func button1(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("1")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("1")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("1")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("1")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("2")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("2")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("2")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("2")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func button3(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("3")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("3")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("3")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("3")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        store=operand1
        resultOutlet.text!=""
        _operator = "+"
    }
    
    @IBAction func button0(_ sender: UIButton) {
        if operand1 == -1.1 && _operator == " "{
            resultOutlet.text!=("0")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand1 != -1.1{
            resultOutlet.text!.append("0")
            operand1 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 == -2.2 && _operator != " "{
            resultOutlet.text!=("0")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
        else if operand2 != -2.2{
            resultOutlet.text!.append("0")
            operand2 = Double(resultOutlet.text!) ?? 0
        }
    }
    
    @IBAction func buttonDecimal(_ sender: UIButton) {
        if resultOutlet.text!.contains("."){
            
        }else{
            resultOutlet.text!.append(".")}
    }
    
    @IBAction func buttonPercentage(_ sender: UIButton) {
        store=operand1
        resultOutlet.text!=""
        _operator = "%"
        
    }
    
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        operand2 = Double(resultOutlet.text!) ?? 0
//        Write if statements with conditions _operator == (matches which sign)
        if _operator == "/"{
            if operand2 != 0{
                let divide = (store/operand2)
                let formatted = String(format: "%.5f", divide)
                let divideInt = Int(divide)
                if (divide == Double(divideInt)){
                    resultOutlet.text! = "\(divideInt)"}
            else{
                resultOutlet.text! = "\(formatted)"}
            }
            else{
                resultOutlet.text! = "Not a number"
            }
        }
    
        
        if _operator == "*"{
            let multiply = (store*operand2)
            let multiplyInt = Int(multiply)
            if (multiply == Double(multiplyInt)){
                resultOutlet.text! = "\(multiplyInt)"
            }
            else{
                resultOutlet.text! = "\(multiply)"
            }
        }
        if _operator == "+"{
            let add = (store+operand2)
            let addInt = Int(add)
            if (add == Double(addInt)){
                resultOutlet.text! = "\(addInt)"
            }
            else{
                resultOutlet.text! = "\(add)"
            }
        }
        if _operator == "-"{
            let subtract = (store-operand2)
            let subtractInt = Int(subtract)
            if (subtract == Double(subtractInt)){
                resultOutlet.text! = "\(subtractInt)"
            }
            else{
                resultOutlet.text! = "\(subtract)"
            }
        }
        if _operator == "%"{
            let perc = (store.truncatingRemainder(dividingBy: operand2))
            let percInt = Int(perc)
            let formatted = String(format: "%.1f", perc)
            if (perc == Double(percInt)){
                resultOutlet.text! = "\(percInt)"
            }
            else{
                resultOutlet.text! = "\(formatted)"
            }
        }
        
        
        }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

