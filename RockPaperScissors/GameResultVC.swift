//
//  GameResultVC.swift
//  RockPaperScissors
//
//  Created by Ashutosh Billa on 23/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class GameResultVC: UIViewController {

    @IBOutlet weak var computerMoveTitleLabel: UILabel!
    @IBOutlet weak var computerMoveLabel: UILabel!
    
    @IBOutlet weak var playerMoveTitleLabel: UILabel!
    @IBOutlet weak var playerMoveLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result: RockPaperScissorsBrain.Result?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    
    @IBAction func playAgainTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        if let result = result {
            playerMoveLabel.text = result.playerMove.rawValue
            playerMoveTitleLabel.text = "\(result.playerMove)"
            computerMoveLabel.text = result.computerMove.rawValue
            computerMoveTitleLabel.text = "\(result.computerMove)"
            resultLabel.text = result.result.rawValue
        }
    }

}
