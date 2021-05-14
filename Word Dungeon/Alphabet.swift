//
//  Alphabet.swift
//  Word Dungeon
//
//  Created by Phurinat on 6/5/2564 BE.
//

import Foundation

struct Alphabet {
    var stage: Int
    private let alphabetList = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    private var alphabetListObj : [AlphabetObj] = []
    
    init(stage: Int) {
        self.stage = stage
        alphabetListObj.removeAll()
        for char in alphabetList {
            alphabetListObj.append(AlphabetObj(id: UUID(), content: char, istrue: true))
        }
    }
    
    func getAlphabetList() -> [AlphabetObj] {
        return alphabetListObj
    }
    mutating func getStartAlphabetList() -> [AlphabetObj] {
        alphabetListObj.removeAll()
        for char in alphabetList {
            alphabetListObj.append(AlphabetObj(id: UUID(), content: char, istrue: true))
        }
        return alphabetListObj
    }
    mutating func setShowAlpha(index:Int,set :Bool) {
        alphabetListObj[index].istrue = false
    }
}


struct AlphabetObj : Identifiable {
    var id : UUID
    var content : String
    var istrue : Bool
}
