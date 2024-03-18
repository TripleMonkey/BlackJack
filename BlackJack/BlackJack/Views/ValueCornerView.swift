//
//  ValueCornerView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//

import SwiftUI

struct ValueCornerView: View {
    let value: String
    let suit: Suit
    var body: some View {
        VStack {
            Text(value)
                .fontWeight(.black)
                .fontDesign(.rounded)
            Image(systemName: "suit.\(suit).fill")
        }
        .padding()
                .font(.largeTitle)
                .fontWeight(.black)
            .fontDesign(.rounded)
    }
}

#Preview {
    ValueCornerView(value: "A", suit: .heart)
}
