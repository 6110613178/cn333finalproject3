//
//  PauseGameView.swift
//  Word Dungeon
//
//  Created by Teerat Prasitwet on 5/8/21.
//

import Foundation
import SwiftUI

struct PauseGameView: View {
    @Binding var showingGame: String
    @ObservedObject var gameData = GameData()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //Firebase
    @ObservedObject var gameRepository = GameRepository()
    
    var body: some View {
        VStack {
            Button(action:{
                self.presentationMode.wrappedValue.dismiss()
            }){
                Image("RESUME")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
            Button(action:{
                gameRepository.remove(at: 0)
                gameRepository.newsaveplayer(stage: gameData.stage, hp: gameData.modelStage.getHpPlayer(), atk: gameData.modelStage.getAtkPlayer(), def: gameData.modelStage.getDefPlayer(), cri: gameData.modelStage.getCritPlayer(), eva: gameData.modelStage.getEvaPlayer())
                showingGame = ""
            }){
                Image("MAIN_MENU")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
        }
        .background(Image("BR02")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all))
    }
}
