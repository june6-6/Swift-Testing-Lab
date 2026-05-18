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
    var doesHighestScoreWin = true

    mutating func resetScores(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }

    // 일부러 빈 구현으로 시작 — TDD!
    var winners: [Player] {
        guard state == .gameOver else {
            return []
        }

        let winningScore: Int

        if doesHighestScoreWin {
            winningScore = players.reduce(Int.min) { max($0, $1.score) }
        } else {
            winningScore = players.reduce(Int.max) { min($0, $1.score) }
        }

        return players.filter { $0.score == winningScore }
    }
}
