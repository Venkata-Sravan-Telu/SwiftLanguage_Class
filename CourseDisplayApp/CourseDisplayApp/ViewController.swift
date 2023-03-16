//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Telu,Venkata Sravan on 3/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var courseNum: UILabel!
    
    @IBOutlet weak var courseTitle: UILabel!
    
    @IBOutlet weak var semesterOffered: UILabel!
    
    let courses = [["img01","44555","Network Security","Fall 2022"],["img02","55364","iOS","Spring 2023"],["img03","12345","Streaming Data","Summer 2023"]]
    var courNum = 0
    
    @IBAction func previousButton(_ sender: UIButton) {
        courNum -= 1
        UpdateCourse(courNum)
        if (courNum == 0){
            prevBtn.isEnabled = false
            nextBtn.isEnabled = true
        }
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        prevBtn.isEnabled = true
        courNum += 1
        UpdateCourse(courNum)
        if (courNum == courses.count-1){
            nextBtn.isEnabled = false
        }
    }
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    func UpdateCourse(_ courNum:Int){
        displayImage.image = UIImage(named: courses[courNum][0])
        courseNum.text = courses[courNum][1]
        courseTitle.text = courses[courNum][2]
        semesterOffered.text = courses[courNum][3]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage.image = UIImage(named: courses[0][0])
        courseNum.text = courses[0][1]
        courseTitle.text = courses[0][2]
        semesterOffered.text = courses[0][3]
        //Disable previousbtn and enable nextbtn
        prevBtn.isEnabled = false
        nextBtn.isEnabled = true
    }


}

