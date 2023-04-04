//
//  ViewController.swift
//  Bonus_App
//
//  Created by Telu,Venkata Sravan on 4/3/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var num1Outlet: UITextField!
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        var num1 = Int(num1Outlet.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if (transition == "numberSegue"){
            var destination = segue.destination as! numberViewController
            destination.storeNum1 = Int(num1Outlet.text!) ?? 0
            
            
        }
    }

}

