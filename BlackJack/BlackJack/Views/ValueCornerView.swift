//
//  ValueCornerView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//

import SwiftUI

struct ValueCornerView: View {
    let value: String
    let suit: String

    var body: some View {
        VStack {
            Text(value)
                .font(.largeTitle)
                .fontWeight(.black)
            .fontDesign(.rounded)
            Image(systemName: suit)
                .font(.title)
        }
    }
}

#Preview {
    ValueCornerView(value: "A", suit: "heart.fill")
}
