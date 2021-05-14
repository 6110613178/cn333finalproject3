//
//  MainGameView.swift
//  WordDungeon
//
//  Created by Teerat Prasitwet on 5/1/21.
//

import Foundation
import SwiftUI

struct MainGameView: View {
    @ObservedObject var gameData = GameData()
    @State var stage = 0
    @Binding var showingGame: String
    @Binding var loadSave: Bool
    @State var showpause = false
    //Firebase
    @ObservedObject var gameRepository = GameRepository()
    
    let gridcolumn = [GridItem(.flexible()),
                      GridItem(.flexible()),
                      GridItem(.flexible()),
                      GridItem(.flexible()),
                      GridItem(.flexible()),
                      GridItem(.flexible())]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack { //HalfTop
                    if loadSave {
                        Button(action: {
                            gameData.setContinue(stage: gameRepository.getStage(), HP: gameRepository.getHp(), ATK: gameRepository.getAtk(), DEF: gameRepository.getDef(), CRIT: gameRepository.getCri(), EVA: gameRepository.getEva())
                            loadSave.toggle()
                        }){
                            Image("CONFIRM_HALF")
                                .resizable()
                                .frame(width: 120, height: 60)
                        }
                        .position(x: geometry.size.width-200, y: 75)
                    } else {
                        Image("")
                            .resizable()
                            .frame(width: 120, height: 60)
                            .position(x: geometry.size.width-200, y: 75)
                    }
                    NavigationLink(
                        destination: PauseGameView(showingGame: $showingGame)
                    ){
                        Image("MENU")
                            .resizable()
                            .frame(width: 70, height: 70)
                    }
                    .position(x: geometry.size.width-50, y: 75)
                    if gameData.modelStage.playerStage.isAlive {
                        Image("")
                            .resizable()
                            .frame(width: 100, height: 30)
                    } else {
                        Image("GAME OVER")
                            .resizable()
                            .frame(width: 100, height: 30)
                    }
                    HStack {
                        VStack {
                            HStack{
                                Image("HP")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("HP : \(gameData.modelStage.getHpPlayer())").font(.title).bold().italic()
                            }
                            if gameData.modelStage.getPlayerModel().isAlive{
                                Image("Player_Shadow")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 160, height: 160)
                            }
                            else{
                                Image("Player_Die")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 160, height: 160)
                            }
                        }
                        Spacer()
                        VStack {
                            HStack{
                                Text("HP : \(gameData.modelStage.getHpMonster())").font(.title).bold().italic()
                                Image("HP")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }
                            if gameData.modelStage.getMonsterModel().isAlive{
                                Image(gameData.modelStage.getMonsterPic())
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 200, height: 220)
                            }
                            else{
                                Image("")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 200, height: 220)
                            }
                            
                        }
                    }
                    
                }
                .frame(width : geometry.size.width, height: geometry.size.height/2)
                .background(Image("BC04")
                                .resizable()
                                .scaledToFill())
                VStack { //HalfBottom
                    Spacer().frame(width: geometry.size.width, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack {
                        ForEach(gameData.vocabularyStage.getCharList()){ charObj in
                            if charObj.istrue {
                                Text(charObj.content)
                                    .font(.title)
                                    .frame(width:25, height: 50)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10).fill(Color.white)
                                    )
                                    .aspectRatio(contentMode: .fit)
                            } else {
                                Text("")
                                    .font(.title)
                                    .frame(width:25, height: 50)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10).fill(Color.white)
                                    )
                                    .aspectRatio(contentMode: .fit)
                                
                            }
                        }
                    }.frame(width : geometry.size.width)
                    Spacer().frame(width: geometry.size.width, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack{
                        LazyVGrid(columns: gridcolumn) {
                            ForEach(gameData.alphabet.getAlphabetList()){obj in
                                if obj.istrue{
                                    Button(action: {
                                        if gameData.checkAnswer(onTap: obj.content){ //vocab is true
                                            gameData.setAnswerShow(onTap: obj.content) //show Answer
                                            gameData.setAlphaShow(onTap: obj.content) //close Alpha
                                            if gameData.vocabularyStage.isComplete(){
                                                gameData.modelStage.atkToMonster()
                                                if gameData.modelStage.monsterStage.isAlive {
                                                    gameData.stageNewVocab()
                                                    
                                                }
                                            }
                                        }else{
                                            gameData.modelStage.atkToPlayer()
                                        }
                                    }){
                                        Image(obj.content)
                                            .resizable()
                                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)}
                                }else{
                                    Image("AlphabetPick")
                                        .resizable()
                                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                }
                                
                            }
                        }
                        
                    }
                    HStack{
                        Button(action: {
                            gameData.vocabularyStage.gettest()
                        }){
                            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        }
                        if gameData.modelStage.getMonsterModel().isAlive{
                            Image("")
                                .resizable()
                                .frame(width: 150, height: 75, alignment: .center)
                        }
                        else{
                            if ((gameData.stage + 1) % 5) != 0 {
                                HStack {
                                    Button(action: {
                                        gameData.stageChanger()
                                        gameRepository.remove(at: 0)
                                        gameRepository.newsaveplayer(stage: gameData.stage, hp: gameData.modelStage.getHpPlayer(), atk: gameData.modelStage.getAtkPlayer(), def: gameData.modelStage.getDefPlayer(), cri: gameData.modelStage.getCritPlayer(), eva: gameData.modelStage.getEvaPlayer())
                                    }) {
                                        Image("NEXT_STAGE")
                                            .resizable()
                                            .frame(width: 200, height: 60)
                                    }
                                }
                            } else if (gameData.modelStage.playerStage.isAlive == false){
                                Button(action: {
                                    gameRepository.remove(at: 0)
                                    gameRepository.newsaveplayer(stage: gameData.stage, hp: gameData.modelStage.getHpPlayer(), atk: gameData.modelStage.getAtkPlayer(), def: gameData.modelStage.getDefPlayer(), cri: gameData.modelStage.getCritPlayer(), eva: gameData.modelStage.getEvaPlayer())
                                    showingGame = ""
                                }){
                                    Image("MAIN_MENU")
                                        .resizable()
                                        .frame(width: 200, height: 60)
                                }
                            } else {
                                Button(action: {
                                    gameData.stageChangerNewMap()
                                    gameRepository.remove(at: 0)
                                    gameRepository.newsaveplayer(stage: gameData.stage, hp: gameData.modelStage.getHpPlayer(), atk: gameData.modelStage.getAtkPlayer(), def: gameData.modelStage.getDefPlayer(), cri: gameData.modelStage.getCritPlayer(), eva: gameData.modelStage.getEvaPlayer())
                                }){
                                    Image("NEXT_STAGE_HALF")
                                        .resizable()
                                        .frame(width: 120, height: 60)
                                }
                                NavigationLink(
                                    destination: StatusGameView()
                                ){
                                    Image("STATUS_UPGRADE_GO")
                                        .resizable()
                                        .frame(width: 120, height: 60)
                                }
                            }
                        }
                        
                    }
                    
                    
                }
                .frame(width : geometry.size.width,height: geometry.size.height/2)
                .background(Image("BC02")
                                .resizable()
                                .scaledToFill())
            }.frame(width : geometry.size.width,height: geometry.size.height)
            
        }.edgesIgnoringSafeArea(.all)
    }
    func resume() {}
    func main_menu() {
        showingGame = ""
    }
    func cancelOrder() { }
}

struct Pause: View {
    @Binding var showingGame: String
    var body: some View {
        VStack {
            Button(action:{
                showingGame = "play"
            }){
                Image("RESUME")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
            .padding()
            Button(action:{
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


/*struct AlphabetButton: View {
 
 }*/
struct MainGameView_Previews: PreviewProvider {
    static var previews: some View {
        MainGameView(showingGame: .constant("play"), loadSave: .constant(true))
    }
}
