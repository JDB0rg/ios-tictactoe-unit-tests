//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {    
    
    // Check Horizontal Win
    for y in 0 ..< 3 {
        let p1 = board[(x: 0, y: 0)]
        let p2 = board[(x: 1, y: 0)]
        let p3 = board[(x: 2, y: 0)]
        if p1 == player && p2 == player && p3 == player {
            return true
        }        
    }
    
    // Check Vertical Win
    for x in 0 ..< 3 {
        let p1 = board[(x: 0, y: 0)]
        let p2 = board[(x: 0, y: 1)]
        let p3 = board[(x: 0, y: 2)]
        if p1 == player && p2 == player && p3 == player {
            return true
        }
    }
    
    return false
}
