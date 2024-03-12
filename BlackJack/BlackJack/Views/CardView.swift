//
//  CardView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//

import SwiftUI

struct CardView: View {

    let cardValue: String
    let cardSuit: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.gray)
            VStack {
                HStack {
                    ValueCornerView(value: cardValue, suit: cardSuit)
                    Spacer()
                }
                .padding()
                Spacer()
                ValueCornerView(value: cardValue, suit: cardSuit)
                    .scaleEffect(5.0)
                Spacer()
                HStack {
                    Spacer()
                    ValueCornerView(value: cardValue, suit: cardSuit)
                        .rotationEffect(.degrees(180))
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    CardView(cardValue: "A", cardSuit: "heart.fill")
}
