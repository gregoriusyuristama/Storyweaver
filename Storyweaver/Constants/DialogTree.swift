//
//  DialogTree.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/19/23.
//

import Foundation

class DialogTree {
    init () {}
    
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
}


