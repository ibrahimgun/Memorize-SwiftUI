//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by İbrahim Gün on 11.03.2022.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚨","💵","🧽","🗳","📦","🚀","✈️","🏎","🚗","🚘","🎮","🚒","🚝","🎡","🛶","🚡","🧿","🧬","🏆","🎳","🥊","⛴","🚁","☪️"]
    
    static func createMakeMemory() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMakeMemory()

    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
