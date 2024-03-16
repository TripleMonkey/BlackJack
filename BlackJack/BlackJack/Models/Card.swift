//
//  Card.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//


import Foundation
import SwiftData
<<<<<<< HEAD
import SwiftUI


=======

@Model
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a
final class Card {

    let id: UUID = UUID()
    let value: String
<<<<<<< HEAD
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
=======
    let suit: String

    // Card positions
    var faceUp = false
    var matched = false

    init(value: String, suit: String) {
        self.value = value
        self.suit = suit
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a
    }
}

