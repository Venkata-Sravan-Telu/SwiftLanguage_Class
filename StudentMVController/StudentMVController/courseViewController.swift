//
//  courseViewController.swift
//  StudentMVController
//
//  Created by Telu,Venkata Sravan on 4/4/23.
//

import UIKit

class courseViewController: UIViewController {

    @IBOutlet weak var labelOutelt: UILabel!
    var coursesArray:[Course] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for course in coursesArray {
            print(course)
                    labelOutelt.text = labelOutelt.text! + course.title + "-" + course.sem + "\n"
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
