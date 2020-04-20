//
//  MovieInfoViewController.swift
//  LastTest
//
//  Created by 张添翅 on 3/5/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import UIKit
import SafariServices

class MovieInfoViewController: UIViewController {
    
    var movieInfo:Movie = Movie()
    
    @IBOutlet weak var moviePost: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieRate: UILabel!
    @IBOutlet weak var movieLink: UIStackView!
    @IBOutlet weak var youtubeLink: UIImageView!
    @IBOutlet weak var primeLink: UIImageView!
    @IBOutlet weak var netflixLink: UIImageView!
    @IBOutlet weak var actorName: UITextView!
    @IBOutlet weak var huluLink: UIImageView!
    @IBOutlet weak var movieDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        movieName.text = movieInfo.movieName
        movieRate.text = movieInfo.movieRate
        actorName.text = movieInfo.actorName
        movieDetail.text = movieInfo.movieDetail
        let tempImage = UIImage(named: movieInfo.movieImageName)
        if tempImage != nil {
            moviePost.image = tempImage!
        }
        
        var imdbGesture:UITapGestureRecognizer?
        var youtubeGesture:UITapGestureRecognizer?
        var primeGesture:UITapGestureRecognizer?
        var netflixGesture:UITapGestureRecognizer?
        var huluGesture:UITapGestureRecognizer?
        
        if movieInfo.imdbLink != nil {
            imdbGesture = UITapGestureRecognizer(target: self, action: #selector(MovieInfoViewController.imdbTapped(gesture:)))
            movieRate.addGestureRecognizer(imdbGesture!)
            movieRate.isUserInteractionEnabled = true
        }
        
        if movieInfo.youtubeLink == nil {
            movieLink.arrangedSubviews[0].isHidden = true
        } else {
            youtubeGesture = UITapGestureRecognizer(target: self, action: #selector(MovieInfoViewController.youtubeTapped(gesture:)))
            youtubeLink.addGestureRecognizer(youtubeGesture!)
            youtubeLink.isUserInteractionEnabled = true
        }
        
        if movieInfo.netflixLink == nil {
            movieLink.arrangedSubviews[1].isHidden = true
        } else {
            netflixGesture = UITapGestureRecognizer(target: self, action: #selector(MovieInfoViewController.netflixTapped(gesture:)))
            netflixLink.addGestureRecognizer(netflixGesture!)
            netflixLink.isUserInteractionEnabled = true
        }
        
        if movieInfo.huluLink == nil {
            movieLink.arrangedSubviews[2].isHidden = true
        } else {
            huluGesture = UITapGestureRecognizer(target: self, action: #selector(MovieInfoViewController.huluTapped(gesture:)))
            huluLink.addGestureRecognizer(huluGesture!)
            huluLink.isUserInteractionEnabled = true
        }
        
        if movieInfo.primeLink == nil {
            movieLink.arrangedSubviews[3].isHidden = true
        } else {
            primeGesture = UITapGestureRecognizer(target: self, action: #selector(MovieInfoViewController.primeTapped(gesture:)))
            primeLink.addGestureRecognizer(primeGesture!)
            primeLink.isUserInteractionEnabled = true
        }
    }
    
    @objc func imdbTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UILabel) != nil {
            guard let url = URL(string: movieInfo.imdbLink!) else {
                return
            }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }
    }
    
    @objc func youtubeTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            guard let url = URL(string: movieInfo.youtubeLink!) else {
                return
            }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }
    }
    
    @objc func netflixTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            guard let url = URL(string: movieInfo.netflixLink!) else {
                return
            }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }
    }
    
    @objc func huluTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            guard let url = URL(string: movieInfo.huluLink!) else {
                return
            }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }
    }
    
    @objc func primeTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            guard let url = URL(string: movieInfo.primeLink!) else {
                return
            }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
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
