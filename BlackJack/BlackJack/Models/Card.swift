//
//  Card.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//


import Foundation
import SwiftData

@Model
final class Card: Identifiable {

    let id: UUID = UUID()
    let value: String
    let suit: String

    // Card positions
    var faceUp = false
    var matched = false

    init(value: String, suit: String) {
        self.value = value
        self.suit = suit
    }
}

