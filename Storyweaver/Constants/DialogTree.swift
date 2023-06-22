//
//  DialogTree.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/19/23.
//

import Foundation

class DialogTree {
    init () {}
    
    static let sceneOneDialogues: [Dialog] = [
        Dialog(id: 0, text: "", outcome: "", nextDialogIDs: [1,2], character: .narrator),
        Dialog(id: 1, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Keep silent", nextDialogIDs: [3,4], character: .narrator),
        Dialog(id: 1, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Try to move", nextDialogIDs: [3,4], character: .narrator),
        Dialog(id: 3, text: "It’s a little bit hard to breath…", outcome: "Keep silent", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 4, text: "Am I... a baby this time?", outcome: "Try to move", nextDialogIDs: [5], character: .narrator)
        Dialog(id: 4, text: "Am I... a baby this time?", outcome: "Try to move", nextDialogIDs: [5], character: .storyweaver)
    ]
    
    static let sceneTwoDialogues: [Dialog] = [
        Dialog(id: 0, text: "Oh, you poor thing…", outcome: "", nextDialogIDs: [1], character: .mbokSrini),
        Dialog(id: 1, text: "There, there, it must have been scary. You're safe now.", outcome: "", nextDialogIDs: [], character: .mbokSrini),
    ]
    
    static let testDialogTree: [Dialog] = [
        Dialog(id: 0, text: "...", outcome: "", nextDialogIDs: [1, 2], character: .narrator),
        Dialog(id: 1, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Keep silent", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 2, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Try to move", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "It's a little bit hard to breathe", outcome: "Continue", nextDialogIDs: [4, 5], character: .narrator),
        Dialog(id: 4, text: "You tried to move harder, hoping to escape the narrow room. ", outcome: "Keep silent", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 5, text: "You tried to move harder, hoping to escape the narrow room. ", outcome: "Try to move", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "(Am I a baby this time?)", outcome: "Continue", nextDialogIDs: [8], character: .storyweaver),
        Dialog(id: 8, text: "Hello?", outcome: "Continue", nextDialogIDs: [9], character: .storyweaver),
        Dialog(id: 9, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: [], character: .storyweaver),
        Dialog(id: 10, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: [], character: .storyweaver),
    ]
    
    static let actOneDialogTree: [Dialog] = [
        Dialog(id: 0, text: "You...Steal...Buto Ijo... Property", outcome: "Reset", nextDialogIDs: [1], character: .giant),
        Dialog(id: 1, text: "In the name of Buto Ijo, I beg your forgiveness", outcome: "Continue", nextDialogIDs: [2, 3], character: .mbokSrini),
        Dialog(id: 2, text: "Strong... Eyes... Quality... Livestock", outcome: "Crying out of fear", nextDialogIDs: [4,5], character: .giant),
        Dialog(id: 3, text: "Strong... Eyes... Quality... Livestock", outcome: "Stare at Buto Ijo with anger", nextDialogIDs: [4,5], character: .giant),
        Dialog(id: 4, text: "I wish to negotiate", outcome: "Try to listen", nextDialogIDs: [6], character: .mbokSrini),
        Dialog(id: 5, text: "I wish to negotiate", outcome: "Crawl to them", nextDialogIDs: [6], character: .mbokSrini),
        Dialog(id: 6, text: "Eight... Years", outcome: "Continue", nextDialogIDs: [7], character: .giant),
        Dialog(id: 6, text: "Oh, you cute girl. How on earth did you manage to get yourself stuck on a cucumber?", outcome: "Continue", nextDialogIDs: [7,8], character: .mbokSrini),
        Dialog(id: 7, text: "You're such an adorable child!", outcome: "Laugh", nextDialogIDs: [9], character: .mbokSrini),
        Dialog(id: 8, text: "You're such an adorable child!", outcome: "Smile and look her in the eyes", nextDialogIDs: [9], character: .mbokSrini),
        Dialog(id: 9, text: "You are the precious gift in my life,", outcome: "Continue", nextDialogIDs: [10], character: .mbokSrini),
        Dialog(id: 10, text: "“Timun Mas! Timun Mas!”", outcome: "Continue", nextDialogIDs: [11], character: .mbokSrini),
        Dialog(id: 11, text: "(Maybe… this once in a time feeling… is not bad at all)", outcome: "Continue", nextDialogIDs: [0], character: .mbokSrini),
    ]
}


