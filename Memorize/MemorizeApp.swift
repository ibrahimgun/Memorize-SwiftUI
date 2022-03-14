//
//  MemorizeApp.swift
//  Memorize
//
//  Created by İbrahim Gün on 8.03.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game =  EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
