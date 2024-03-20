//
//  TableView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/13/24.
//

import SwiftUI

struct TableView: View {

    let cardSize = CGSize(width: 120, height: 200)

    let cardDeck = Deck(deckCount: 8)

    @State var dealerHand: [Card] = [
        Card(suit: .heart, value: 1,
             faceUp: false),
        Card(suit: .club, value: 12,
             faceUp: true)
    ]

    @State var playerHand: [Card] = [
        Card(suit: .heart, value: 1,
             faceUp: true),
        Card(suit: .club, value: 8,
             faceUp: true),
        Card(suit: .diamond, value: 13,
             faceUp: true)
    ]

    var body: some View {
        VStack(alignment: .center) {
            Text("Dealer Hand")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 1)
                .padding()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<dealerHand.count, id: \.self) { index in
                        CardView(card: dealerHand[index], size: cardSize)
                            .offset(x: CGFloat(50+(50*index)))
                    }
                }
            }
            Text("My Hand")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 1)
                .padding()
            HStack {
                ForEach(0..<playerHand.count, id: \.self) { index in
                    CardView(card: playerHand[index], size: cardSize)
                        .offset(x: CGFloat(50-(50*index)))
                }
            }
            HStack {
                Button("Stand") {
                    // TODO: add stand func here
                }
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 1)
                .padding(40)

                Spacer()
                Button("Hit Me") {
                    // TODO: add hit function here
                }
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 1)
                .padding(40)
            }
            .buttonStyle(.bordered)
            .padding()
        }
        .background(.green)
    }
}

#Preview {
    TableView()
}
