//
//  PlaySongVC.swift
//  Swapping Screens
//
//  Created by Richards, Brandon S. on 4/12/17.
//  Copyright © 2017 Richards, Brandon S. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String?
    
    var selectedSong: String {
        get {
            if let selectedSongCheck = _selectedSong {
                return selectedSongCheck
            }
            return ""
        } set {
            _selectedSong? = newValue
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
