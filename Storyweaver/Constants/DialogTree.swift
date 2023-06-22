//
//  DialogTree.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/19/23.
//

import Foundation

class DialogTree {
    init () {}
    
    static let DialogTreeScene1: [Dialog] = [
        Dialog(id: 0, text: "\"...\"", outcome: "", nextDialogIDs: [1, 2], character: .storyweaver),
        Dialog(id: 1, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Keep silent", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 2, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Try to move", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "(It's a little bit hard to breathe)", outcome: "Continue", nextDialogIDs: [4, 5], character: .storyweaver),
        Dialog(id: 4, text: "You tried to move harder, hoping to escape the narrow room. ", outcome: "Keep silent", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 5, text: "You tried to move harder, hoping to escape the narrow room. ", outcome: "Try to move", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        
        
        Dialog(id: 7, text: "(Am I... a baby this time?)", outcome: "Continue", nextDialogIDs: [8], character: .storyweaver),
        Dialog(id: 8, text: "\"Hello?\"", outcome: "Continue", nextDialogIDs: [9], character: .mbokSrini),
        Dialog(id: 9, text: "(I hear a woman’s voice…)", outcome: "Continue", nextDialogIDs: [10], character: .storyweaver),
        Dialog(id: 10, text: "\"Is anyone here?\"", outcome: "Continue", nextDialogIDs: [11], character: .storyweaver),
        Dialog(id: 11, text: "The woman’s voice gradually gained clarity, seeking to discover the presence of another soul in her vicinity.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "(I think this my chance… I am not staying stuck in this whatever-place. Plus, it smells like dirt?)", outcome: "Continue", nextDialogIDs: [13], character: .storyweaver),
        Dialog(id: 13, text: "(Hello, I am here…)", outcome: "Continue", nextDialogIDs: [14], character: .storyweaver),
        Dialog(id: 14, text: "The sound of heavy breaths reverberated through the surroundings, growing steadily louder and closer with each passing moment.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        // Pindah First Person //
        
        
    ]
    
    static let sceneTwoDialogues: [Dialog] = [
        Dialog(id: 0, text: "As the sound of a fruit being sliced echoed through the air, the light surrounding you grew in intensity, gradually unveiling a face that emerged from the blinding light. Tears welled up in your eyes, yet amidst the misty vision, the visage became clearer.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        
        Dialog(id: 1, text: "\"Oh you poor thing...\"", outcome: "Continue", nextDialogIDs: [2], character: .mbokSrini),
        Dialog(id: 2, text: "The elderly grandmother reached out and gently pulled you from the cramped space. ", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "As her eyes met yours, witnessing the tears streaming down your face, she offered a comforting smile and soothingly reassured, ", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"There, there, it must have been scary. You're safe now.\"", outcome: "Continue", nextDialogIDs: [5], character: .mbokSrini),
        Dialog(id: 5, text: "As she embraced you in a tender hug, an inexplicable warmth enveloped you, and a sense of comfort washed over your being. In that moment, the tears evaporated, replaced by a radiant smile.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The ground trembled beneath a colossal stomping sound, jolting you out of your joyful state. ", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "The grandmother's expression shifted from comfort to intensified fear, her features contorting with worry and concern.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "Within moments, a terrifying giant came into view, towering over everything in its path like a peak pine tree. ", outcome: "", nextDialogIDs: [], character: .narrator),
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


