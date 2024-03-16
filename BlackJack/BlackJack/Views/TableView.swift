//
//  TableView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/13/24.
//

import SwiftUI

struct TableView: View {

    let cardSize = CGSize(width: 180, height: 250)

    var body: some View {
        //GeometryReader { proxy in
        VStack(alignment: .leading) {
            // Spacer()
            Text("Dealer Hand")
                .padding()
            ZStack {
                CardView(card: Card(value: "A", suit: .heart, faceUp: false), size: cardSize)
                CardView(card: Card(value: "Q", suit: .club, faceUp: true), size: cardSize)
                    .offset(x: 80)
            }
            Text("My Hand")
                .padding()
            ZStack {
                CardView(card: Card(value: "A", suit: .heart, faceUp: true), size: cardSize)
                CardView(card: Card(value: "Q", suit: .club, faceUp: true), size: cardSize)
                    .offset(x: 80)
                CardView(card: Card(value: "Q", suit: .heart, faceUp: true), size: cardSize)
                    .offset(x: 160)
            }

        }
        .padding()
        // }
    }
}

#Preview {
    TableView()
}
