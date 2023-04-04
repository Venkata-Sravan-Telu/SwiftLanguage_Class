//
//  resultViewController.swift
//  MVCDiscountApp
//
//  Created by Telu,Venkata Sravan on 3/30/23.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var amountOL: UILabel!
    
    @IBOutlet weak var discountRateOL: UILabel!
    
    @IBOutlet weak var priceDiscount: UILabel!
    
    var destinationAmt = ""
    var destinationdiscRate = ""
    var destinationpriceDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountOL.text = amountOL.text! + destinationAmt
        discountRateOL.text = discountRateOL.text! + destinationdiscRate
        priceDiscount.text = priceDiscount.text! + destinationpriceDisc
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
