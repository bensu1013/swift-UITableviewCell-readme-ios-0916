//
//  DetailViewController.swift
//  CustomCellFun
//
//  Created by Benjamin Su on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailAlbum: UILabel!
    
    @IBOutlet weak var detailName: UILabel!
    
    @IBOutlet weak var detailLength: UILabel!
    
    @IBOutlet weak var detailLyrics: UILabel!
    
    var songData: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let data = songData {
            detailAlbum.text = data.album
            detailName.text = data.name
            detailLength.text = data.length
            detailLyrics.text = data.lyrics
            detailImage.image = UIImage(named: data.album)
        }
        
        // Do any additional setup after loading the view.
    }

  

    
    
}
