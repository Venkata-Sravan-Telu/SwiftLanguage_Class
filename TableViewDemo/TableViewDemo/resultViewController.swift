//
//  resultViewController.swift
//  TableViewDemo
//
//  Created by Telu,Venkata Sravan on 4/13/23.
//

import UIKit

class resultViewController: UIViewController {
    var product:Product?

    @IBOutlet weak var resultLabelOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabelOL.text = "The product \((product?.name)!) is of \((product?.category)!) category"
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
