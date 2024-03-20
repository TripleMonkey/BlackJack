//
//  Deck.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/19/24.
//

import Foundation

struct Deck {
    var cards: [Card] = []
    
    //Deck count param determines deck size: ex. deckCount 1 = 52cards, deckCount 8 = 418cards
    init(deckCount: Int = 1) {
        var deckBuild: [Card] = []
        for _ in 0..<deckCount {
            for suit in Suit.allCases {
                for index in 1...13 {
                    deckBuild.append(Card(suit: suit, value: index))
                }
            }
        }
        self.cards = deckBuild.shuffled()
        for card in cards {
            print("\(card.suit) \(card.valueShown)" )
        }
        print(cards.count)
    }
}
