//
//  MusicListVC.swift
//  Swapping Screens
//
//  Created by Richards, Brandon S. on 4/12/17.
//  Copyright © 2017 Richards, Brandon S. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blueColor()
    }


    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    //When loadThirdScreen button is pressed it will perform segue with object songTitle

    @IBAction func load3rdPress(sender: AnyObject) {
               let songTitle = "Gangsters Paradise"
        //performSegueWithIdentifier("PlaySongVC", sender: songTitle)
        
        print("pressed")
        
        
        performSegueWithIdentifier("PlaySongVC", sender: songTitle)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("innn")
        
        if let destination = segue.destinationViewController as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
        
        
        
        
        
        
    }

}
