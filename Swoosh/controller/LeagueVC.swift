//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Todd Fields on 2017-08-29.
//  Copyright © 2017 Todd Fields. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var nextButton: BorderButton!
    
    var player: Player!
    
    // MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    // MARK: - Functions
    func selectLeague(leagueType: String) {
        
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    // MARK: - IBActions
    @IBAction func onMensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
     
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
