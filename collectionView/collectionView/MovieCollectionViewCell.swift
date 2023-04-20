//
//  MovieCollectionViewCell.swift
//  collectionView
//
//  Created by Telu,Venkata Sravan on 4/20/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    func asssignMovies(movie: Movie){
        //Assign movies into the cell, after creating the number of cells dynamically
        imageViewOL.image = movie.image
    }
    
    
    
    
    
    
    
    
    
}
