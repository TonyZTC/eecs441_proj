//
//  MovieSearchViewController.swift
//  LastTest
//
//  Created by 张添翅 on 3/7/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController {
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchResult = Array(0 ..< dataArray.count)
        
//        saveMovies()
//        dataArray = loadMovies()!
//        print(Movie.ArchiveURL.absoluteString)
    }
    
    private func saveMovies() {
        let movieData = try! NSKeyedArchiver.archivedData(withRootObject: dataArray, requiringSecureCoding: true)
        try! movieData.write(to: Movie.ArchiveURL, options: .atomic)
        
    }
    
    private func loadMovies() -> [Movie]? {
        let movieData = NSData(contentsOf: Movie.ArchiveURL)
        return try! NSKeyedUnarchiver.unarchivedObject(ofClasses: [NSArray.self, Movie.self], from: movieData! as Data) as? [Movie]
    }
}

extension MovieSearchViewController : UISearchBarDelegate {
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchResult = Array(0 ..< dataArray.count)
        var searchtext: String = ""
        if searchText.isEmpty == false {
            searchtext = searchText.lowercased()
            searchResult = searchResult.filter {
                (index) -> Bool in
                return dataArray[index].movieNameLower.contains(searchtext)
            }
        }
        movieTableView.reloadData()
    }
    
}

extension MovieSearchViewController : UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResult.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchMovieCellId", for: indexPath) as! MovieTableViewCell
        let movie = dataArray[searchResult[indexPath.row]]
        cell.setCell(movieInfo: movie)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "viewMovieInfofromSearching", sender: nil)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewMovieInfofromSearch" {
            let movieInfo = segue.destination as! MovieInfoViewController
            movieInfo.movieInfo = dataArray[searchResult[movieTableView!.indexPathForSelectedRow!.row]]
        }
    }
}
