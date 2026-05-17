//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by jihoon jang on 5/17/26.
//

import Testing
@testable import ScoreKeeper

//struct ScoreKeeperTests {
//
//    // 테스트를 먼저 작성하고, 구현은 나중에! (Test-Driven Development, TDD)
//    @Test("Reset scores") func resetScores() {
//        // 1. 준비 (Arrange) - 테스트할 Scoreboard 준비
//        var scoreboard = Scoreboard()
//        scoreboard.players = [
//            Player(name: "Elisha", score: 10),
//            Player(name: "Andre", score: 5),
//            Player(name: "Jasmine", score: 8),
//        ]
//        
//        // 실행 (Act) - 테스트할 메서드 호출
//        scoreboard.resetScores(to: 0)
//        
//        // 검증 (Assert) - 결과 확인
//        for player in scoreboard.players {
//            #expect(player.score == 0)
//        }
//    }
//}

struct ScoreKeeperTests {

    @Test("Reset scores", arguments: [0, 5, 10])
    func resetScores(startingPoints: Int) {
        var scoreboard = Scoreboard()
        scoreboard.players = [
            Player(name: "Elisha", score: 10),
            Player(name: "Andre", score: 5),
            Player(name: "Jasmine", score: 8),
        ]

        scoreboard.resetScores(to: startingPoints)

        for player in scoreboard.players {
            #expect(player.score == startingPoints)
        }
    }
}
