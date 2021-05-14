//
//  VocabularyStage.swift
//  WordDungeon
//
//  Created by Teerat Prasitwet on 5/2/21.
//

import Foundation

struct VocabularyStage{
    var readvocab = ReadVocabFile()
    private var vocabularyList = [[String]]()
    var stage: Int
    var vocabStageList: [String] = []
    var vocabStageShow: [String] = []
    var vocabAnswer = ""
    private var CharacterList: [CharacterObj] = []
    
    init(stage: Int){
        self.stage = stage
        vocabularyList = readvocab.getuseword()
        vocabAnswer = vocabularyList[stage].shuffled()[0]
        vocabStageList = vocabAnswer.map{
            String($0)
        }
        for i in vocabStageList {
            vocabStageShow.append(i)
            CharacterList.append(CharacterObj(id: UUID(), content: i, istrue: false))
        }
    }
    func getCharList() -> [CharacterObj] {
        return CharacterList
    }
    mutating func setShowChar(index:Int,set :Bool){
        CharacterList[index].istrue = set
    }
    func isComplete() -> Bool {
        let complete = true
        for i in CharacterList{
            if i.istrue == false{
                return false
            }
        }
        return complete
    }
    func gettest(){
        print(vocabStageList)
    }
}
struct CharacterObj: Identifiable {
    var id : UUID
    var content : String
    var istrue : Bool
}
