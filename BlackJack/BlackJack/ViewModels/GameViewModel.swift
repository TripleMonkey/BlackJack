//
//  GameViewModel.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/19/24.
//

import Foundation

class GameViewModel: ObservableObject {

    @Published var dealerHand: [Card] = []
    @Published var playerHand: [Card] = []

    @Published var dealerScore: Int = 0
    @Published var playerScore: Int = 0

    func updateValue(for score: Int, with newCard: Card) -> Int {
        var subtotal = score

        if newCard.value != 1 {
            subtotal += newCard.value
        }

        if newCard.value == 1 && subtotal <= 10 {
            subtotal += 11
        } else {
            subtotal += 1
        }
        return subtotal
    }
}
