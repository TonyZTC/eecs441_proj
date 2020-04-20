//
//  MovieTableViewCell.swift
//  LastTest
//
//  Created by 张添翅 on 2/29/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import UIKit



class MovieTableViewCell: UITableViewCell {


    @IBOutlet weak var moviePost: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieRate: UILabel!
    
    func setCell(movieInfo: Movie) {
        let tempImage = UIImage(named: movieInfo.movieImageName)
        if tempImage != nil {
            moviePost.image = tempImage!
        }
        movieName.numberOfLines = 2
        movieName.text = movieInfo.movieName
        movieRate.text = movieInfo.movieRate
    }
}
