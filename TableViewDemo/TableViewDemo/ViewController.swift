//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Telu,Venkata Sravan on 4/13/23.
//

import UIKit

class Product{
    var name:String?
    var category:String?
    
    init(name:String,category:String) {
        self.name = name
        self.category = category
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // expects to return the number of items/products
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        let myCell = tableviewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //populate the cell we created above
        myCell.textLabel?.text = products[indexPath.row].name
        //return cell
        return myCell
    }
    
    
    //Create an empty array of products
    var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let p1 = Product(name: "MacBookAir", category: "Laptop")
        let p2 = Product(name: "iPhone 14", category: "Phone")
        let p3 = Product(name: "iWatch", category: "Watch")
        let p4 = Product(name: "Airpods Pro", category: "Earpods")
        let p5 = Product(name: "iphone 13", category: "Phone")
        products.append(p1)
        products.append(p2)
        products.append(p3)
        products.append(p4)
        products.append(p5)
        
        tableviewOutlet.delegate = self
        tableviewOutlet.dataSource = self
    }

    @IBOutlet weak var tableviewOutlet: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if (transition == "resultSegue"){
            let destination = segue.destination as! resultViewController
            
            //Ensure you send the selected product row
            destination.product = products[(tableviewOutlet.indexPathForSelectedRow?.row)!]
        }
    }
    
}

