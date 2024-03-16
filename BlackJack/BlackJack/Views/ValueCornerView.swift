//
//  ValueCornerView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/12/24.
//

import SwiftUI

struct ValueCornerView: View {
    let value: String
<<<<<<< HEAD
    let suit: Suit
=======
    let suit: String
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a

    var body: some View {
        VStack {
            Text(value)
<<<<<<< HEAD
                .fontWeight(.black)
                .fontDesign(.rounded)
            Image(systemName: "suit.\(suit).fill")
        }
        .padding()
=======
                .font(.largeTitle)
                .fontWeight(.black)
            .fontDesign(.rounded)
            Image(systemName: suit)
                .font(.title)
        }
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a
    }
}

#Preview {
<<<<<<< HEAD
    ValueCornerView(value: "A", suit: .heart)
=======
    ValueCornerView(value: "A", suit: "heart.fill")
>>>>>>> 126a808071e182b239484e8cacc7b26c507fe58a
}
