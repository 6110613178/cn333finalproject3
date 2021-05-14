//
//  HomeScreenView.swift
//  WordDungeon
//
//  Created by Teerat Prasitwet on 5/1/21.
//

import Foundation
import SwiftUI

struct HomeScreenView: View {
    @Binding var showingGame: String
    @Binding var loadSave: Bool
    //Firebase
    @ObservedObject var gameRepository = GameRepository()
    @ObservedObject var gameData = GameData()
    
    var body: some View {
        VStack {
            Image("WordDungeonLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 380, height: 380)
            Button(action:{
                gameRepository.newsaveplayer(stage: gameData.stage, hp: gameData.modelStage.getHpPlayer(), atk: gameData.modelStage.getAtkPlayer(), def: gameData.modelStage.getDefPlayer(), cri: gameData.modelStage.getCritPlayer(), eva: gameData.modelStage.getEvaPlayer())
                showingGame = "play"
            }){
                Image("NEW GAME")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
            Button(action:{
                loadSave.toggle()
                showingGame = "play"
            }){
                Image("CONTINUE")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
        }
        .background(Image("BR01")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all))
    }
    
    func setbegin(){
        gameData.modelStage.addStagePlayer(
            iHP:gameRepository.getHp(),
            iATK:gameRepository.getAtk(),
            iDEF:gameRepository.getDef(),
            iCRIT:gameRepository.getCri(),
            iEVA:gameRepository.getEva())
        gameData.setStage(stage: gameRepository.getStage())
    }
}

