//
//  MemorizeApp.swift
//  Memorize
//
//  Created by İbrahim Gün on 8.03.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game =  EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
