//
//  CardView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//

import SwiftUI
<<<<<<< HEAD
import SwiftData


struct CardView: View {
    
    let card: Card
    let size: CGSize
    
    var body: some View {
        
        GeometryReader { proxy in
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                    .foregroundColor(card.faceUp ? .white : card.color)
                VStack {
                    HStack {
                        ValueCornerView(value: card.value, suit: card.suit)
                        Spacer()
                    }
                    Spacer()
                    ValueCornerView(value: card.value, suit: card.suit)
                        .font(Font.system(size: 40))
                    Spacer()
                    HStack {
                        Spacer()
                        ValueCornerView(value: card.value, suit: card.suit)
                            .rotationEffect(.degrees(180))
                    }
                }
                .foregroundColor(card.color)
            }
            .frame(width: size.width, height: size.height)
        }
=======

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
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a
    }
}

#Preview {
<<<<<<< HEAD
    //    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    //    let container = try! ModelContainer(for: Card.self, configurations: config)
    return CardView(card: Card(value: "A", suit: .heart, faceUp: true), size: CGSize(width: 180, height: 250))
    //.modelContainer(container)
    
=======
    CardView(cardValue: "A", cardSuit: "heart.fill")
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a
}
