//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Ashutosh Billa on 23/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import Foundation
import GameplayKit


struct RockPaperScissorsBrain {
   
    // MARK: - Properties
    private var playerMove: Sign? {
        didSet {
            let comp = computerMove
            if let player = playerMove {
                result = Result(playerMove: player, computerMove: comp, result: player.getGameResult(comp: comp))
            }
            
        }
    }
    
    private var computerMove: Sign {
        get {
            return randomSign()
        }
    }
    
    var result: Result?
    
    private let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)


    // MARK: - Methods
    mutating func setPlayerMove(_ ps: String) {
        if let sign = Sign(rawValue: ps) {
            playerMove = sign
        }
    }
    
    private func randomSign() -> Sign {
        let sign = randomChoice.nextInt()
        switch sign {
        case 0:
            return .Rock
        case 1:
            return .Paper
        case 2:
            return .Scissors
        default:
            break
        }
        return .Rock
    }
    
    
    // MARK: - Enumerations
    enum GameState: String {
        case win = "You win!"
        case lose = "You lose."
        case tie = "It's a tie."
    }
    
    enum Sign: String {
        case Rock = "👊🏻"
        case Paper = "🖐🏻"
        case Scissors = "✌🏻"
        
        func getGameResult(comp: Sign) -> GameState {
            let playHash = self.hashValue; let compHash = comp.hashValue
            let difference = abs(playHash - compHash)
            
            if difference > 1 {
                
                return min(playHash, compHash) == playHash ? .win : .lose
                
            } else if difference == 1 {
                
                return max(playHash, compHash) == playHash ? .win : .lose
                
            } else if difference < 1 {
                
                return .tie
                
            }
            return .lose
        }
    }
    
    // MARK: - Result Struct
    struct Result {
        var playerMove: Sign
        var computerMove: Sign
        var result: GameState
    }
    
}


