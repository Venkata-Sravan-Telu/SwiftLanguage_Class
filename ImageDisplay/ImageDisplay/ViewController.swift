//
//  ViewController.swift
//  ImageDisplay
//
//  Created by Telu,Venkata Sravan on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonClicked(_ sender: UIButton) {
        labelText.text! = "The above pic displayed is Virat Kohli"
        Image.image = UIImage(named: "kohli")
    }
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var labelText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

