//
//  ContentView.swift
//  Word Dungeon
//
//  Created by Phurinat on 1/5/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGame : String = ""
    @State var loadSave = false
    @State var stage = 0
    var body: some View {
        if showingGame == "play" {
            NavigationView {
                MainGameView(showingGame: $showingGame, loadSave: $loadSave)
            }
        } else {
            HomeScreenView(showingGame: $showingGame, loadSave: $loadSave)
        }
    }
}


/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
