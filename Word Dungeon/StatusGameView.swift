//
//  SwiftUIView.swift
//  Word Dungeon
//
//  Created by Phurinat on 6/5/2564 BE.
//
import Foundation
import SwiftUI


struct StatusGameView: View {
    @ObservedObject var gameData = GameData()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Image("StatusUpgradeLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 380, height: 130)
            Text("HP : \(gameData.modelStage.getFullHPPlayer())").font(.title).bold().italic()
                .foregroundColor(.white)
                .frame(width: 240, height: 40)
            Text("ATK : \(gameData.modelStage.getAtkPlayer())").font(.title).bold().italic()
                .foregroundColor(.white)
                .frame(width: 240, height: 40)
            Text("DEF : \(gameData.modelStage.getDefPlayer())").font(.title).bold().italic()
                .foregroundColor(.white)
                .frame(width: 240, height: 40)
            Text("CRIT : \(gameData.modelStage.getCritPlayer())").font(.title).bold().italic()
                .foregroundColor(.white)
                .frame(width: 240, height: 40)
            Text("EVA : \(gameData.modelStage.getEvaPlayer())").font(.title).bold().italic()
                .foregroundColor(.white)
                .frame(width: 240, height: 40)
            HStack {
                Image("Player")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 300)
                VStack {
                    Text("Status Point : \(gameData.modelStage.statusPoint)").font(.title).bold().italic()
                        .foregroundColor(.white)
                        .frame(width: 240, height: 40)
                    HStack {
                        Text("HP")
                            .font(.title).bold().italic()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 40)
                        Button(action: {
                            gameData.modelStage.minusHPPoint()
                        }){
                            Image("Minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        Text("\(gameData.modelStage.HPPoint)")
                            .font(.title)
                            .frame(width: 50, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                            )
                            .aspectRatio(contentMode: .fit)
                        Button(action: {
                            gameData.modelStage.plusHPPoint()
                        }){
                            Image("Plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                    }
                    HStack {
                        Text("ATK")
                            .font(.title).bold().italic()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 40)
                        Button(action: {
                            gameData.modelStage.minusATKPoint()
                        }){
                            Image("Minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        Text("\(gameData.modelStage.ATKPoint)")
                            .font(.title)
                            .frame(width: 50, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                            )
                            .aspectRatio(contentMode: .fit)
                        Button(action: {
                            gameData.modelStage.plusATKPoint()
                        }){
                            Image("Plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                    }
                    HStack {
                        Text("DEF")
                            .font(.title).bold().italic()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 40)
                        Button(action: {
                            gameData.modelStage.minusDEFPoint()
                        }){
                            Image("Minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        Text("\(gameData.modelStage.DEFPoint)")
                            .font(.title)
                            .frame(width: 50, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                            )
                            .aspectRatio(contentMode: .fit)
                        Button(action: {
                            gameData.modelStage.plusDEFPoint()
                        }){
                            Image("Plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                    }
                    HStack {
                        Text("CRIT")
                            .font(.title).bold().italic()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 40)
                        Button(action: {
                            gameData.modelStage.minusCRITPoint()
                        }){
                            Image("Minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        Text("\(gameData.modelStage.CRITPoint)")
                            .font(.title)
                            .frame(width: 50, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                            )
                            .aspectRatio(contentMode: .fit)
                        Button(action: {
                            gameData.modelStage.plusCRITPoint()
                        }){
                            Image("Plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                    }
                    HStack {
                        Text("EVA")
                            .font(.title).bold().italic()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 40)
                        Button(action: {
                            gameData.modelStage.minusEVAPoint()
                        }){
                            Image("Minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        Text("\(gameData.modelStage.EVAPoint)")
                            .font(.title)
                            .frame(width: 50, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                            )
                            .aspectRatio(contentMode: .fit)
                        Button(action: {
                            gameData.modelStage.plusEVAPoint()
                        }){
                            Image("Plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                    }
                    
                }
            }
            Button(action:{
                gameData.modelStage.upgradeStatus()
            }){
                Image("CONFIRM")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }){
                Image("BACK")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 60)
            }
            Spacer()
        }.background(Image("BR03")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all))
        
    }
}

struct StatusGameView_Previews: PreviewProvider {
    static var previews: some View {
        StatusGameView()
    }
}
