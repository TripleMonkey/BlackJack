//
//  CardView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//

import SwiftUI
import SwiftData


struct CardView: View {
    
    let card: Card
    let size: CGSize
    
    var body: some View {
        
        GeometryReader { proxy in
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                    .foregroundColor(card.faceUp ? .white : .red)
                VStack {
                    HStack {
                        ValueCornerView(value: card.value, suit: card.suit)
                        Spacer()
                    }
                    Spacer()
                    ValueCornerView(value: card.value, suit: card.suit)
                        .fontWeight(.black)
                        .font(.largeTitle)
                    Spacer()
                    HStack {
                        Spacer()
                        ValueCornerView(value: card.value, suit: card.suit)
                            .rotationEffect(.degrees(180))
                    }
                }
                .frame(width: size.width*0.9, height: size.height*0.95)
                .foregroundColor(card.color)
            }
            .frame(width: size.width, height: size.height)
        }
    }
}

#Preview {
    //    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    //    let container = try! ModelContainer(for: Card.self, configurations: config)
    return CardView(card: Card(value: "A", suit: .heart, faceUp: true), size: CGSize(width: 120, height: 200)).padding()
    //.modelContainer(container)
}
