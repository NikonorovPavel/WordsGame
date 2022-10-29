//
//  Player.swift
//  WordsGame
//
//  Created by Pavel on 02.08.2022.
//

import Foundation

struct Player {
    let name: String
    private(set) var score = 0
    
    mutating func add(score: Int) {
        self.score += score
    }
}
