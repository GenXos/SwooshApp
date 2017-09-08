//
//  SkillVC.swift
//  Swoosh
//
//  Created by Todd Fields on 2017-08-29.
//  Copyright © 2017 Todd Fields. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    // MARK: - Variables
    var player: Player!
    
    // MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague)
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
