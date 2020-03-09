//
//  MovieTableViewController.swift
//  LastTest
//
//  Created by 张添翅 on 2/29/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var dataArray:Array<Movie>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let m1 = Movie()
        m1.movieName = "m1"
        m1.movieRate = "9.0"
        m1.movieDetail = "Aha"
        m1.imdbLink = ""
        m1.youtubeLink = ""
        m1.primeLink = ""
        m1.netflixLink = ""
        
        let m2 = Movie()
        m2.movieName = "m2"
        m2.movieRate = "8.0"
        m2.movieDetail = ""
        m2.imdbLink = ""
        m2.netflixLink = ""
        
        dataArray = [m1, m2]
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCellId", for: indexPath) as! MovieTableViewCell
        let movie = dataArray![indexPath.row]
        cell.setCell(movieInfo: movie)
        return cell
    }
    

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "viewMovieInfofromLeaving", sender: nil)
//    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewMovieInfofromLeaving" {
            let movieInfo = segue.destination as! MovieInfoViewController
            movieInfo.movieInfo = self.dataArray![self.tableView!.indexPathForSelectedRow!.row]
        }
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
