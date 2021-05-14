//
//  ReadVocabFile.swift
//  Word Dungeon
//
//  Created by Cheunchanok Phewkleang on 12/5/2564 BE.
//

import Foundation
class ReadVocabFile {
    var allWords = [String]()
    var formatWords = [String]()
    var useWords = [[String]]() // [[aas,zxc,dfg],[asdf,asdf]]
    
    init() {
        readtext()
        format()
        generateWord()
    }
    func readtext(){
        if let startWordsURL = Bundle.main.url(forResource: "vocab", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                allWords = startWords.components(separatedBy: "\n")
            }
        }
        if allWords.isEmpty {
            allWords = ["silkworm"]
        }
    }
    func format(){
        for i in allWords {
            var rmetc = String(i.filter { !" \n\t\r".contains($0) }).uppercased()
            formatWords.append(rmetc)
        }
    }
    func generateWord(){
        for i in 3..<13 {
            var arr = [String]()
            for j in 0..<formatWords.count {
                let word = formatWords[j]
                let len = word.count
                if len == i {
                    arr.append(word)
                }
            }
            useWords.append(arr)
        }
    }
    func getuseword() -> [[String]] {
        return useWords
    }
}
