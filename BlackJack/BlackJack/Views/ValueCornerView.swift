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
                .fontDesign(.rounded)
            Image(systemName: "suit.\(suit).fill")
        }
        .fontWeight(.bold)
    }
}

#Preview {
    ValueCornerView(value: "A", suit: .heart)
}
