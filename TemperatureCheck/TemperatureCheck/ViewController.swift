//
//  ViewController.swift
//  TemperatureCheck
//
//  Created by Telu,Venkata Sravan on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTemp: UITextField!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBAction func buttonCheckTemp(_ sender: UIButton) {
        var temp = Int(inputTemp.text!) ?? 0
        if temp >= 20{
            displayImage.image = UIImage(named: "hotTemp")
        }
        else if temp >= 0 && temp < 20{
            displayImage.image = UIImage(named: "mildCold")
        }
        else if temp < 0{
            displayImage.image = UIImage(named: "cold")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

