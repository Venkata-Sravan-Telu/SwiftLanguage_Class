//
//  resultViewController.swift
//  Bonus_App
//
//  Created by Telu,Venkata Sravan on 4/3/23.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var resnum1 = 0
    var resnum2 = 0
    var resAdd = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "\(resnum1) + \(resnum2) = \(resAdd)"
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
