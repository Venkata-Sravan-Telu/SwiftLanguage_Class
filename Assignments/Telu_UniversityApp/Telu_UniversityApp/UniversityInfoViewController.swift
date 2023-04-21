//
//  UniversityInfoViewController.swift
//  Telu_UniversityApp
//
//  Created by Telu,Venkata Sravan on 4/16/23.
//

import UIKit

class UniversityInfoViewController: UIViewController {
    
    var collegeName:String?
    var collegePic:String?
    var collegeDesc:String?

    @IBOutlet weak var universityImageViewOutlet: UIImageView!
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        universityInfoOutlet.text = collegeDesc!
    }
    
    @IBOutlet weak var universityInfoOutlet: UITextView!
    
    override func viewDidAppear(_ animated: Bool) {
        universityImageViewOutlet.image = UIImage(named: collegePic!)
        universityImageViewOutlet.frame.origin.x = view.frame.width
        UIView.animate(withDuration: 1, delay: 0,  animations: {
            self.universityImageViewOutlet.center.x = self.view.center.x;
                })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = collegeName
        
        
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
