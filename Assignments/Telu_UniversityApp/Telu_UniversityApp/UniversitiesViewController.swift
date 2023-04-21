//
//  ViewController.swift
//  Telu_UniversityApp
//
//  Created by Telu,Venkata Sravan on 4/16/23.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list:[UniversityList]?
    var ListViewTitle = ""

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Universities_List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = universitiesTableView.dequeueReusableCell(withIdentifier: "domainCell", for: indexPath)
        cell.textLabel?.text = Universities_List[indexPath.row].domain
        list = Universities_List[indexPath.row].list_Array
        return cell
    }
    

    @IBOutlet weak var universitiesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Domains"
        universitiesTableView.delegate = self
        universitiesTableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if (transition == "listsSegue"){
            let destination = segue.destination as! UniversityListViewController
            destination.capture = Universities_List[(universitiesTableView.indexPathForSelectedRow?.row)!]
            destination.store = list
            destination.navTitle = Universities_List[(universitiesTableView.indexPathForSelectedRow?.row)!].domain!
        }
    }

}

