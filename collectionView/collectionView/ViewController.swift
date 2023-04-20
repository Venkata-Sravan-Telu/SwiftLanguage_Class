//
//  ViewController.swift
//  collectionView
//
//  Created by Telu,Venkata Sravan on 4/20/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.asssignMovies(movie: movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text = "Title: \(movies[indexPath.row].title)"
        yearReleasedOL.text = "Year released: \(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Rating: \(movies[indexPath.row].movieRating)"
        boxofficeOL.text = "Box Office: \(movies[indexPath.row].boxOffice)"
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
    }

    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    @IBOutlet weak var ratingOL: UILabel!
    
    @IBOutlet weak var boxofficeOL: UILabel!
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    
    
}

