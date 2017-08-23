//
//  PlayerMoveVC.swift
//  RockPaperScissors
//
//  Created by Ashutosh Billa on 23/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class PlayerMoveVC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var game = RockPaperScissorsBrain()

    @IBAction func signTapped(_ sender: UIButton) {
        if let sign = sender.currentTitle {
            game.setPlayerMove(sign)
            
            let gameResultVC = self.storyboard?.instantiateViewController(withIdentifier: "GameResultViewController") as! GameResultVC
            gameResultVC.result = game.result
            self.present(gameResultVC, animated: true, completion: nil)
        }
    }

}

