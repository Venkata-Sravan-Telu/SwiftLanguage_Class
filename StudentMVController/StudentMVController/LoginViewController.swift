//
//  ViewController.swift
//  StudentMVController
//
//  Created by Telu,Venkata Sravan on 4/4/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userIDOutlet: UITextField!
    
    var studentFound = Student()
        
        //to check whether user is student/guest
        //Initially isStudent is false that means user is a guest
        var isStudent = false
        
        //Array of type Student, we imported it from the 'Student' file
        var studentsArray = students
        
    
    @IBAction func getDetailsButtonAction(_ sender: UIButton) {
        let enteredID = userIDOutlet.text!
                
                //Loop the array to find the student
                for student in studentsArray {
                    if enteredID == student.sid{
                        //student found and store the student in a global variable.
                        studentFound = student
                        //boolean flag as true,since we found a student.
                        isStudent = true
                        
                    }
                }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
                if transition == "studentInfoSegue"{
                    //Create a destination of type studentInfoViewController
                    let destination = segue.destination as! studentInfoViewController
                    
                    //if student is exists in the array, we will assign the studentObj in the destination with "studentFound"
                    if isStudent {
                        destination.studentObj = studentFound
                    }else{
                        //if the given sid is not in the array, then the student is a guest!!
                        //we set the boolean in the destination as true!!
                        destination.guestUser = true
                    }
    }

}

}
