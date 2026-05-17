//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by jihoon jang on 5/17/26.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0),
    ]
    
    var state = GameState.setup
    
    mutating func resetScores(to newValue: Int) {
        // 일부러 비워둠 - 테스트 먼저 작성
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
