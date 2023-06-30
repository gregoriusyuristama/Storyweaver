//
//  Dialog.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/19/23.
//

import Foundation

struct Dialog {
    let id: Int
    let text: String
    let outcome: String
    let nextDialogIDs: [Int]
    let character: CharacterList
    var emotion: EmotionEnum = .normal
}
