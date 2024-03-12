//
//  Result.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/7/24.
//

import Foundation
import SwiftData

@Model
final class Result {
    var timestamp: Date
    var win: Bool
    
    init(timestamp: Date, win: Bool) {
        self.timestamp = timestamp
        self.win = win
    }
}
