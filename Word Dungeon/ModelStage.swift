//
//  ModelStage.swift
//  WordDungeon
//
//  Created by Teerat Prasitwet on 5/5/21.
//

import Foundation

struct ModelStage {
    private var playerModelList: [PlayerModel] = [
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        PlayerModel(imageURL: "Player", HP: 1000, ATK: 100, DEF: 10, CRIT: 10, EVA: 5, isAlive: true)]
    private var monsterModelList: [MonsterModel] = [
        MonsterModel(imageURL: "M01_GreenPoring_Shadow", HP: 5, ATK: 2, DEF: 1, CRIT: 1, EVA: 1, isAlive: true),
        MonsterModel(imageURL: "M02_MudHand_Shadow", HP: 80, ATK: 10, DEF: 1, CRIT: 1, EVA: 1, isAlive: true),
        MonsterModel(imageURL: "M03_LionWhat_Shadow", HP: 100, ATK: 15, DEF: 1, CRIT: 1, EVA: 1, isAlive: true),
        MonsterModel(imageURL: "M04_KidBlueDragon_Shadow", HP: 120, ATK: 20, DEF: 1, CRIT: 1, EVA: 1, isAlive: true),
        MonsterModel(imageURL: "M05_EyeWing_Shadow", HP: 200, ATK: 35, DEF: 15, CRIT: 10, EVA: 15, isAlive: true),
        MonsterModel(imageURL: "M06_PterosaurHerd_Shadow", HP: 120, ATK: 25, DEF: 5, CRIT: 5, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M07_OctopusDragon_Shadow", HP: 130, ATK: 30, DEF: 10, CRIT: 5, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M08_BlueInsect_Shadow", HP: 125, ATK: 25, DEF: 1, CRIT: 5, EVA: 15, isAlive: true),
        MonsterModel(imageURL: "M09_EyeShield_Shadow", HP: 300, ATK: 5, DEF: 20, CRIT: 0, EVA: 0, isAlive: true),
        MonsterModel(imageURL: "M10_PhantomAxeKing_Shadow", HP: 275, ATK: 50, DEF: 35, CRIT: 15, EVA: 10, isAlive: true),
        MonsterModel(imageURL: "M11_FishSoldier_Shadow", HP: 150, ATK: 25, DEF: 5, CRIT: 20, EVA: 15, isAlive: true),
        MonsterModel(imageURL: "M12_DilophosaurusHerd_Shadow", HP: 175, ATK: 30, DEF: 10, CRIT: 10, EVA: 10, isAlive: true),
        MonsterModel(imageURL: "M13_PlagueRockMan_Shadow", HP: 200, ATK: 35, DEF: 15, CRIT: 15, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M14_BigMarble_Shadow", HP: 275, ATK: 40, DEF: 50, CRIT: 5, EVA: 1, isAlive: true),
        MonsterModel(imageURL: "M15_CoolCat_Shadow", HP: 100, ATK: 25, DEF: 1, CRIT: 60, EVA: 80, isAlive: true),
        MonsterModel(imageURL: "M16_DarkDwarf_Shadow", HP: 200, ATK: 30, DEF: 10, CRIT: 15, EVA: 15, isAlive: true),
        MonsterModel(imageURL: "M17_GreenAngel_Shadow", HP: 250, ATK: 35, DEF: 15, CRIT: 10, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M18_BladeDragon_Shadow", HP: 210, ATK: 45, DEF: 10, CRIT: 20, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M19_JokerGirl_Shadow", HP: 235, ATK: 35, DEF: 5, CRIT: 35, EVA: 10, isAlive: true),
        MonsterModel(imageURL: "M20_WhiteKingDragon_Shadow", HP: 350, ATK: 100, DEF: 60, CRIT: 5, EVA: 1, isAlive: true),
        MonsterModel(imageURL: "M21_SkullMage_Shadow", HP: 250, ATK: 50, DEF: 10, CRIT: 10, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M22_ShadowGank_Shadow", HP: 230, ATK: 40, DEF: 5, CRIT: 35, EVA: 15, isAlive: true),
        MonsterModel(imageURL: "M23_HandsomeSmile_Shadow", HP: 270, ATK: 40, DEF: 5, CRIT: 50, EVA: 20, isAlive: true),
        MonsterModel(imageURL: "M24_SwampFace_Shadow", HP: 300, ATK: 70, DEF: 20, CRIT: 10, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M25_DarkGothic_Shadow", HP: 330, ATK: 150, DEF: 10, CRIT: 50, EVA: 20, isAlive: true),
        MonsterModel(imageURL: "M26_DemonFishWarrior_Shadow", HP: 300, ATK: 80, DEF: 30, CRIT: 20, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M27_DemonCrab_Shadow", HP: 330, ATK: 100, DEF: 15, CRIT: 10, EVA: 20, isAlive: true),
        MonsterModel(imageURL: "M28_DemonSpider_Shadow", HP: 360, ATK: 120, DEF: 25, CRIT: 5, EVA: 15, isAlive: true),
        MonsterModel(imageURL: "M29_OldDemon_Shadow", HP: 400, ATK: 150, DEF: 35, CRIT: 5, EVA: 5, isAlive: true),
        MonsterModel(imageURL: "M30_DoubleHeadDemonDragon_Shadow", HP: 600, ATK: 200, DEF: 50, CRIT: 15, EVA: 10, isAlive: true),
        MonsterModel(imageURL: "M31_ThreeEyesGod_Shadow", HP: 1000, ATK: 500, DEF: 75, CRIT: 1, EVA: 1, isAlive: true),
        
    ]
    var stage: Int
    var playerStage: PlayerModel
    var monsterStage: MonsterModel
    var statusPoint: Int
    var HPPoint: Int
    var ATKPoint: Int
    var DEFPoint: Int
    var CRITPoint: Int
    var EVAPoint: Int
    var FullHP: Int
    var FullATK: Int
    var FullDEF: Int
    var FullCRIT: Int
    var FullEVA: Int
    
    init(stage: Int) {
        self.stage = stage
        playerStage = playerModelList[stage/5]
        monsterStage = monsterModelList[stage]
        statusPoint = 1
        HPPoint = 0
        ATKPoint = 0
        DEFPoint = 0
        CRITPoint = 0
        EVAPoint = 0
        FullHP = 1000
        FullATK = 100
        FullDEF = 10
        FullCRIT = 10
        FullEVA = 5
    }
    
    mutating func addStagePlayer(iHP: Int, iATK: Int, iDEF: Int, iCRIT: Int, iEVA: Int) {
        playerStage = PlayerModel(imageURL: "Player_Shadow", HP: iHP, ATK: iATK, DEF: iDEF, CRIT: iCRIT, EVA: iEVA, isAlive: true)
    }
    mutating func upgradeStatus() {
        playerModelList[(stage+1)/5].HP = FullHP
        playerModelList[(stage+1)/5].ATK = FullATK
        playerModelList[(stage+1)/5].DEF = FullDEF
        playerModelList[(stage+1)/5].CRIT = FullCRIT
        playerModelList[(stage+1)/5].EVA = FullEVA
        if HPPoint > 0 {
            playerModelList[(stage+1)/5].HP += HPPoint*200
            FullHP = playerModelList[(stage+1)/5].HP
            HPPoint = 0
        }
        if ATKPoint > 0 {
            playerModelList[(stage+1)/5].ATK += ATKPoint*20
            FullATK = playerModelList[(stage+1)/5].ATK
            ATKPoint = 0
        }
        if DEFPoint > 0 {
            playerModelList[(stage+1)/5].DEF += DEFPoint*5
            FullDEF = playerModelList[(stage+1)/5].DEF
            DEFPoint = 0
        }
        if CRITPoint > 0 {
            playerModelList[(stage+1)/5].CRIT += CRITPoint*5
            FullCRIT = playerModelList[(stage+1)/5].CRIT
            CRITPoint = 0
        }
        if EVAPoint > 0 {
            playerModelList[(stage+1)/5].EVA += EVAPoint*5
            FullEVA = playerModelList[(stage+1)/5].EVA
            EVAPoint = 0
        }
        playerStage = playerModelList[(stage+1)/5]
    }
    
    mutating func changePlayer(stage: Int) {
        self.stage = stage
        playerStage = playerModelList[stage/5]
    }
    mutating func plusHPPoint() {
        if statusPoint > 0 {
            statusPoint -= 1
            HPPoint += 1
        }
    }
    mutating func plusATKPoint() {
        if statusPoint > 0 {
            statusPoint -= 1
            ATKPoint += 1
        }
    }
    mutating func plusDEFPoint() {
        if statusPoint > 0 {
            statusPoint -= 1
            DEFPoint += 1
        }
    }
    mutating func plusCRITPoint() {
        if statusPoint > 0 {
            statusPoint -= 1
            CRITPoint += 1
        }
    }
    mutating func plusEVAPoint() {
        if statusPoint != 0 {
            statusPoint -= 1
            EVAPoint += 1
        }
    }
    mutating func minusHPPoint() {
        if HPPoint > 0 {
            statusPoint += 1
            HPPoint -= 1
        }
    }
    mutating func minusATKPoint() {
        if ATKPoint > 0 {
            statusPoint += 1
            ATKPoint -= 1
        }
    }
    mutating func minusDEFPoint() {
        if DEFPoint > 0 {
            statusPoint += 1
            DEFPoint -= 1
        }
    }
    mutating func minusCRITPoint() {
        if CRITPoint > 0 {
            statusPoint += 1
            CRITPoint -= 1
        }
    }
    mutating func minusEVAPoint() {
        if EVAPoint > 0 {
            statusPoint += 1
            EVAPoint -= 1
        }
    }
    
    mutating func changeMonster(stage: Int) {
        self.stage = stage
        monsterStage = monsterModelList[stage]
    }
    func getPlayerModel() -> PlayerModel {
        return playerStage
    }
    func getPlayerModelList() -> [PlayerModel] {
        return playerModelList
    }
    func getMonsterModel() -> MonsterModel {
        return monsterStage
    }
    func getMonsterPic() -> String {
        return monsterStage.imageURL
    }
    func getHpPlayer() -> Int {
        return playerStage.HP
    }
    func getImgPlayer() -> String {
        return playerStage.imageURL
    }
    func getAtkPlayer() -> Int {
        return playerStage.ATK
    }
    func getDefPlayer() -> Int {
        return playerStage.DEF
    }
    func getEvaPlayer() -> Int {
        return playerStage.EVA
    }
    func getCritPlayer() -> Int {
        return playerStage.CRIT
    }
    func getFullHPPlayer() -> Int {
        return playerModelList[(stage+1)/5].HP
    }
    
    func getHpMonster() -> Int {
        return monsterStage.HP
    }
    func randomAtk(Atk :Int) -> Double {
        let persent = Int.random(in: 100..<121)
        return Double(Atk)*(Double(persent)/100.0)
    }
    func randomPersent(percentage :Int) -> Bool {
        return arc4random_uniform(100) < percentage
    }/*
    mutating func createstateplayer(stage: Int){
        var createplayobj = PlayerModel(id: UUID(), imageURL: getImgPlayer(), HP: getHpPlayer(), ATK: getAtkPlayer(), DEF: getDefPlayer(), CRIT: getCritPlayer(), EVA: getCritPlayer(), isAlive: true)
        playerModelList.append(createplayobj)
    }*/
    mutating func atkToMonster() {
        let atkPlayer = playerStage.ATK
        let critPlayer = playerStage.CRIT
        let hpMonster = monsterStage.HP
        let defMonster = monsterStage.DEF
        let evaMonster = 100-monsterStage.EVA
        if randomPersent(percentage: evaMonster){
            if randomPersent(percentage: critPlayer){
                monsterStage.HP = hpMonster - Int(randomAtk(Atk: atkPlayer)*((100.0 - Double(defMonster))/100.0))*2
            }
            else{
                monsterStage.HP = hpMonster - Int(randomAtk(Atk: atkPlayer)*((100.0 - Double(defMonster))/100.0))
            }
            if monsterStage.HP <= 0{
                monsterStage.isAlive = false
            }
        }
    }
    mutating func atkToPlayer() {
        let atkMonster = monsterStage.ATK
        let critMonster = monsterStage.CRIT
        let hpPlayer = playerStage.HP
        let defPlayer = playerStage.DEF
        let evaPlayer = 100-playerStage.EVA
        if randomPersent(percentage: evaPlayer){
            print(randomPersent(percentage: evaPlayer))
            if randomPersent(percentage: critMonster){
                playerStage.HP = hpPlayer - Int(randomAtk(Atk: atkMonster)*((100.0 - Double(defPlayer))/100.0))*2
            }
            else{
                playerStage.HP = hpPlayer - Int(randomAtk(Atk: atkMonster)*((100.0 - Double(defPlayer))/100.0))
            }
            if playerStage.HP <= 0{
                playerStage.isAlive = false
            }
        }
    }
    
}

struct PlayerModel: Identifiable {
    var id = UUID()
    var imageURL: String
    var HP: Int
    var ATK: Int
    var DEF: Int
    var CRIT: Int
    var EVA: Int
    var isAlive: Bool
}

struct MonsterModel: Identifiable {
    var id = UUID()
    var imageURL: String
    var HP: Int
    var ATK: Int
    var DEF: Int
    var CRIT: Int
    var EVA: Int
    var isAlive: Bool
}
