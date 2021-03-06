//
//  MovieNewTableViewController.swift
//  LastTest
//
//  Created by 张添翅 on 3/8/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import UIKit

class MovieNewTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newMovieArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewMovieCellId", for: indexPath) as! MovieTableViewCell
        let movie = dataArray[newMovieArray[indexPath.row]]
        cell.setCell(movieInfo: movie)
        return cell
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewMovieInfofromNew" {
            let movieInfo = segue.destination as! MovieInfoViewController
            movieInfo.movieInfo = dataArray[newMovieArray[self.tableView!.indexPathForSelectedRow!.row]]
        }
    }
}
