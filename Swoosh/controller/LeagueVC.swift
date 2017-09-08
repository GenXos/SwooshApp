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
    
    // MARK: - Variables
    var player: Player!
    
    // MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
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
 
    // MARK: - Functions
    func selectLeague(leagueType: String) {
        
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let skillVC = segue.destination as? SkillVC {
            
            skillVC.player = player
        }
    }

}












































