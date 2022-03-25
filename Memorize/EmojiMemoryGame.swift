//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by İbrahim Gün on 11.03.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚨","💵","🧽","🗳","📦","🚀","✈️","🏎","🚗","🚘","🎮","🚒","🚝","🎡","🛶","🚡","🧿","🧬","🏆","🎳","🥊","⛴","🚁","☪️"]
    
    private static func createMakeMemory() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMakeMemory()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
//        objectWillChange.send()
        model.choose(card)
    }
}
