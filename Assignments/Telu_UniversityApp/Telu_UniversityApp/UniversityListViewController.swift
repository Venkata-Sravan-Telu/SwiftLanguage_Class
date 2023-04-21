//
//  UniversityListViewController.swift
//  Telu_UniversityApp
//
//  Created by Telu,Venkata Sravan on 4/16/23.
//

import UIKit

class UniversityListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var store:[UniversityList]?
    var navTitle = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (store?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let univCell = universityListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        store = capture?.list_Array
        univCell.textLabel?.text = store?[indexPath.row].collegeName
        return univCell
    }
    

    @IBOutlet weak var universityListTableView: UITableView!
    
    var capture:Universites?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        universityListTableView.delegate = self
        universityListTableView.dataSource = self
        self.navigationItem.title = navTitle
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transistion = segue.identifier
        if (transistion == "universityInfoSegue"){
            var destination = segue.destination as! UniversityInfoViewController
            destination.collegeName =  store![(universityListTableView.indexPathForSelectedRow?.row)!].collegeName!
            destination.collegePic =  store![(universityListTableView.indexPathForSelectedRow?.row)!].collegeImage!
            destination.collegeDesc =  store![(universityListTableView.indexPathForSelectedRow?.row)!].collegeInfo!
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
