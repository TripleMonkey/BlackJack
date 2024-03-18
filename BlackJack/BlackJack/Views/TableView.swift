//
//  TableView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/13/24.
//

import SwiftUI

struct TableView: View {

    let cardSize = CGSize(width: 120, height: 200)

    @State var dealerHand: [Card] = [
        Card(value: "A", 
             suit: .heart,
             faceUp: false),
        Card(value: "Q", 
             suit: .club,
             faceUp: true),
        Card(value: "2",
             suit: .heart,
             faceUp: true),
        Card(value: "2",
             suit: .heart,
             faceUp: true),
        Card(value: "2",
             suit: .heart,
             faceUp: true),
        Card(value: "2",
             suit: .heart,
             faceUp: true),
        Card(value: "2",
             suit: .heart,
             faceUp: true)
    ]

    @State var playerHand: [Card] = [
        Card(value: "A",
             suit: .heart,
             faceUp: true),
        Card(value: "8",
             suit: .club,
             faceUp: true),
        Card(value: "2",
             suit: .diamond,
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
            HStack {
                ForEach(0..<dealerHand.count, id: \.self) { index in
                    CardView(card: dealerHand[index], size: cardSize)
                        .offset(x: CGFloat(20-index))
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

                }
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 1)
                .padding(40)

                Spacer()
                Button("Hit Me") {

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
