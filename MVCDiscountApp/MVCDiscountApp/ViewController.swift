//
//  ViewController.swift
//  MVCDiscountApp
//
//  Created by Telu,Venkata Sravan on 3/30/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountOutlet: UITextField!
    
    var priceAfterDisc = 0.0
    
    @IBAction func discountButtonAction(_ sender: UIButton) {
        let amount = Double(amountOutlet.text!)
        let discAmt = Double(discountOutlet.text!)
        priceAfterDisc = amount! - (amount!*discAmt!/100)
        print(priceAfterDisc)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // create a transition
        let transition = segue.identifier
        // create destination
        if (transition == "resultSegue"){
            //reach the destination
            let destination = segue.destination as! resultViewController
            destination.destinationAmt = amountOutlet.text!
            destination.destinationdiscRate = discountOutlet.text!
            destination.destinationpriceDisc = String(priceAfterDisc)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

