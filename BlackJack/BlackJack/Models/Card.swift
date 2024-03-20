//
//  Card.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//


import Foundation
import SwiftData
import SwiftUI

final class Card: Identifiable{


    let id: UUID = UUID()
    let suit: Suit
    let value: Int
    var valueShown: String {
        switch value {
        case 1: return "A"
        case 2: return "2"
        case 3: return "3"
        case 4: return "4"
        case 5: return "5"
        case 6: return "6"
        case 7: return "7"
        case 8: return "8"
        case 9: return "9"
        case 10: return "10"
        case 11: return "J"
        case 12: return "Q"
        case 13: return "K"
        default: return "JOKER"
        }
    }

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

    init(suit: Suit, value: Int, faceUp: Bool = false) {
        self.value = value
        self.suit = suit
        self.faceUp = faceUp
    }
}

