//
//  BoardTests.swift
//  TicTacToeTests
//
//  Created by Madison Waters on 2/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class BoardTests: XCTestCase {

    func testHorizontalWin() throws {
        var board = GameBoard()
        try board.place(mark: .x, on: (x: 0, y: 0))
        try board.place(mark: .x, on: (x: 1, y: 0))
        try board.place(mark: .x, on: (x: 2, y: 0))
        
        let isWonByX = game(board: board, isWonBy: .x)
        XCTAssertTrue(isWonByX)
        
        let isWonByO = game(board: board, isWonBy: .o)
        XCTAssertFalse(isWonByO)
    }

    func testDiagonalWin() throws {
        var board = GameBoard()
        try board.place(mark: .x, on: (x: 0, y: 0))
        try board.place(mark: .x, on: (x: 1, y: 1))
        try board.place(mark: .x, on: (x: 2, y: 2))
        
        let isWonByX = game(board: board, isWonBy: .x)
        XCTAssertTrue(isWonByX)
        
        let isWonByO = game(board: board, isWonBy: .o)
        XCTAssertFalse(isWonByO)
    }
    
    func testVerticalWin() throws {
        var board = GameBoard()
        try board.place(mark: .x, on: (x: 0, y: 0))
        try board.place(mark: .x, on: (x: 0, y: 1))
        try board.place(mark: .x, on: (x: 0, y: 2))
        
        let isWonByX = game(board: board, isWonBy: .x)
        XCTAssertTrue(isWonByX)
        
        let isWonByO = game(board: board, isWonBy: .o)
        XCTAssertFalse(isWonByO)
    }
    
    func testTieGame() {
        let board = GameBoard()
        
        XCTAssertTrue(board.isFull, "Tie games only occur with a full board")
        
        let isWonByX = game(board: board, isWonBy: .x)
        XCTAssertFalse(isWonByX, "Tie games cannot have a winner")
        let isWonByO = game(board: board, isWonBy: .o)
        XCTAssertFalse(isWonByO, "Time games cannot have a winner")
    }
    
    func testEmptyBoard() {
        let empty = GameBoard()
        for x in 0 ..< 3 {
            for y in 0 ..< 3 {
                let mark = empty[(x: x, y: y)]
                XCTAssertNil(mark, "Position (\(x)), \(y)) should be empty")
            }
        }
    }
}
