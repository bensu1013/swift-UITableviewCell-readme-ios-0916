//
//  TableViewController.swift
//  CustomCellFun
//
//  Created by James Campagno on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let reuseIdentifier = "friendCell"
    var thrillerAlbum: [Song] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createThrillerAlbum()
    }
    
    func createThrillerAlbum() {
        let firstTrack = Song(name: "Wanna Be Starting Somethin", album: "Thriller", length: "6:03", lyrics: "I said you wanna be starting something\nYou got to be startin somethin\nI said you wanna be startin somethin\nYou got to be starting something\nIts too high to get over (yeah, yeah)\nToo\nlow to get under\nYoure stuck in the middle\nAnd the pain is thunder\nIts too high to get over\nToo low to get under\nYoure stuck in the middle\nAnd the pain is thunder\nI took my baby to the doctor\nWith a fever, but nothing he found\nBy the time this hit the street\nThey said she had a breakdown\nSomeones always trying to start my baby crying\nTalking, squealing, lying\nSaying you just wanna be starting something\nI said you wanna be starting something\nYou got to be starting something\nI said")
        let secondTrack = Song(name: "Baby Be Mine", album: "Thriller", length: "4:20", lyrics: "")
        let thirdTrack = Song(name: "The Girl Is Mine", album: "Thriller", length: "3:42", lyrics: "")
        let fourthTrack = Song(name: "Thriller", album: "Thriller", length: "5:57", lyrics: "")
        let fifthTrack = Song(name: "Beat It", album: "Thriller", length: "4:18", lyrics: "")
        let sixthTrack = Song(name: "Billie Jean", album: "Thriller", length: "4:54", lyrics: "")
        let seventhTrack = Song(name: "Human Nature", album: "Thriller", length: "4:06", lyrics: "")
        let eightTrack = Song(name: "P.Y.T. (Pretty Young Thing)", album: "Thriller", length: "3:59", lyrics: "")
        let ninthTrack = Song(name: "The Lady in My Life", album: "Thriller", length: "5:00", lyrics: "")
        
        thrillerAlbum = [firstTrack, secondTrack, thirdTrack, fourthTrack, fifthTrack, sixthTrack, seventhTrack, eightTrack, ninthTrack]
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return thrillerAlbum.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! SongCell
        
        cell.backgroundColor = UIColor.gray

        let song = thrillerAlbum[indexPath.row]
        
        cell.nameOfSongLabel.text? = song.name
        cell.lengthOfSongLabel.text? = song.length
        
        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "detailsSegue" {return}
        if let dest = segue.destination as? DetailViewController,
            let index = tableView.indexPathForSelectedRow {
            
            dest.songData = thrillerAlbum[index.row]
            
        }
        
        
    }
    
    
    
    

}
