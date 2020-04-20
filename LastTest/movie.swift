//
//  movie.swift
//  LastTest
//
//  Created by 张添翅 on 3/2/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import Foundation
import UIKit
import os.log


class Movie: NSObject, NSSecureCoding {
    struct PropertyKey {
        static let movieName = "movieName"
        static let movieImageName = "movieImageName"
        static let movieRate = "movieRate"
        static let actorName = "actorName"
        static let movieDetail = "movieDetail"
        static let imdbLink = "imdbLink"
        static let youtubeLink = "youtubeLink"
        static let netflixLink = "netflixLink"
        static let huluLink = "huluLink"
        static let primeLink = "primeLink"
    }

    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("movies.txt")
    static var supportsSecureCoding: Bool { return true }
    
    func encode(with coder: NSCoder) {
        coder.encode(movieName, forKey: PropertyKey.movieName)
        coder.encode(movieImageName, forKey: PropertyKey.movieImageName)
        coder.encode(movieRate, forKey: PropertyKey.movieRate)
        coder.encode(actorName, forKey: PropertyKey.actorName)
        coder.encode(movieDetail, forKey: PropertyKey.movieDetail)
        coder.encode(imdbLink, forKey: PropertyKey.imdbLink)
        coder.encode(youtubeLink, forKey: PropertyKey.youtubeLink)
        coder.encode(netflixLink, forKey: PropertyKey.netflixLink)
        coder.encode(huluLink, forKey: PropertyKey.huluLink)
        coder.encode(primeLink, forKey: PropertyKey.primeLink)
    }
    
    override init() { }
    
    required convenience init?(coder: NSCoder) {
        self.init()
        self.movieName = coder.decodeObject(forKey: PropertyKey.movieName) as! String
        self.movieNameLower = self.movieName.lowercased()
        self.movieImageName = coder.decodeObject(forKey: PropertyKey.movieImageName) as! String
        self.movieRate = coder.decodeObject(forKey: PropertyKey.movieRate) as! String
        self.actorName = coder.decodeObject(forKey: PropertyKey.actorName) as! String
        self.actorNameLower = self.actorName.lowercased()
        self.movieDetail = coder.decodeObject(forKey: PropertyKey.movieDetail) as! String
        self.imdbLink = coder.decodeObject(forKey: PropertyKey.imdbLink) as? String
        self.youtubeLink = coder.decodeObject(forKey: PropertyKey.youtubeLink) as? String
        self.netflixLink = coder.decodeObject(forKey: PropertyKey.netflixLink) as? String
        self.huluLink = coder.decodeObject(forKey: PropertyKey.huluLink) as? String
        self.primeLink = coder.decodeObject(forKey: PropertyKey.primeLink) as? String
    }
    
    convenience init(movieName: String,
                     movieImageName: String,
                     movieRate: String,
                     imdbLink: String,
                     youtubeLink: String,
                     netflixLink: String,
                     huluLink: String,
                     primeLink: String,
                     actorName: String,
                     movieDetail: String) {
        self.init()
        self.movieName = movieName
        self.movieNameLower = self.movieName.lowercased()
        self.movieImageName = movieImageName
        self.movieRate = movieRate
        self.actorName = actorName
        self.actorNameLower = self.actorName.lowercased()
        self.movieDetail = movieDetail
        self.imdbLink = imdbLink.isEmpty ? nil : (imdbLink == "N/A" ? nil : imdbLink)
        self.youtubeLink = youtubeLink.isEmpty ? nil : (youtubeLink == "N/A" ? nil : youtubeLink)
        self.netflixLink = netflixLink.isEmpty ? nil : (netflixLink == "N/A" ? nil : netflixLink)
        self.huluLink = huluLink.isEmpty ? nil : (huluLink == "N/A" ? nil : huluLink)
        self.primeLink = primeLink.isEmpty ? nil : (primeLink == "N/A" ? nil : primeLink)
    }
    
    var movieName: String = ""
    var movieNameLower: String = ""
    var movieImageName: String = ""
    var movieRate: String = "N/A"
    var actorName: String = "N/A"
    var actorNameLower: String = ""
    var movieDetail: String = ""
    var imdbLink: String?
    var youtubeLink: String?
    var netflixLink: String?
    var huluLink: String?
    var primeLink: String?
}
