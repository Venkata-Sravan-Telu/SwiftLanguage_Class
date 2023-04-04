//
//  numberViewController.swift
//  Bonus_App
//
//  Created by Telu,Venkata Sravan on 4/3/23.
//

import UIKit

class numberViewController: UIViewController {

    @IBOutlet weak var num2Outlet: UITextField!
    
    var storeNum1 = 0
    var num2 = 0
    var add = 0
    
    @IBAction func AddButton(_ sender: UIButton) {
        num2 = Int(num2Outlet.text!) ??  0
        add = num2 + storeNum1
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if (transition == "resultSegue"){
            var destination = segue.destination as! resultViewController
            destination.resnum1 = storeNum1
            destination.resnum2 = num2
            destination.resAdd = add
        }
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
