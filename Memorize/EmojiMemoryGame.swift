//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by ฤฐbrahim Gรผn on 11.03.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["๐จ","๐ต","๐งฝ","๐ณ","๐ฆ","๐","โ๏ธ","๐","๐","๐","๐ฎ","๐","๐","๐ก","๐ถ","๐ก","๐งฟ","๐งฌ","๐","๐ณ","๐ฅ","โด","๐","โช๏ธ"]
    
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
