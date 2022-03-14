//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by İbrahim Gün on 11.03.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚨","💵","🧽","🗳","📦","🚀","✈️","🏎","🚗","🚘","🎮","🚒","🚝","🎡","🛶","🚡","🧿","🧬","🏆","🎳","🥊","⛴","🚁","☪️"]
    
    static func createMakeMemory() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMakeMemory()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
//        objectWillChange.send()
        model.choose(card)
    }
}
