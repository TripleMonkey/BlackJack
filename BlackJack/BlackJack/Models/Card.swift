//
//  Card.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//


import Foundation
import SwiftData
import SwiftUI


final class Card {

    let id: UUID = UUID()
    let value: String
    let suit: Suit

    // Set card color based on suit
    var color: Color {
        if suit == .club || suit == .spade {
            return .black
        } else {
            return .red
        }
    }

    // Card positions
    var faceUp = false

    init(value: String, suit: Suit, faceUp: Bool = false) {
        self.value = value
        self.suit = suit
        self.faceUp = faceUp
    }
}

