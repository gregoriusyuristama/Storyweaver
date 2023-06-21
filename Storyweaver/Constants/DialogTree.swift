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
                Dialog(id: 14, text: "The sound of heavy breaths reverberated through the surroundings, growing steadily louder and closer with each passing moment.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
                Dialog(id: 15, text: "As the sound of a fruit being sliced echoed through the air, the light surrounding you grew in intensity, gradually unveiling a face that emerged from the blinding light. Tears welled up in your eyes, yet amidst the misty vision, the visage became clearer.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
                Dialog(id: 16, text: "\"Oh you poor thing...\"", outcome: "Continue", nextDialogIDs: [17], character: .mbokSrini),
                Dialog(id: 17, text: "The elderly grandmother reached out and gently pulled you from the cramped space. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 18, text: "As her eyes met yours, witnessing the tears streaming down your face, she offered a comforting smile and soothingly reassured, ", outcome: "Continue", nextDialogIDs: [19], character: .narrator),
                Dialog(id: 19, text: "\"There, there, it must have been scary. You're safe now.\"", outcome: "Continue", nextDialogIDs: [20], character: .mbokSrini),
                Dialog(id: 20, text: "As she embraced you in a tender hug, an inexplicable warmth enveloped you, and a sense of comfort washed over your being. In that moment, the tears evaporated, replaced by a radiant smile.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
                Dialog(id: 21, text: "The ground trembled beneath a colossal stomping sound, jolting you out of your joyful state. ", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
                Dialog(id: 22, text: "The grandmother's expression shifted from comfort to intensified fear, her features contorting with worry and concern.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
                Dialog(id: 23, text: "Within moments, a terrifying giant came into view, towering over everything in its path like a peak pine tree. ", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
                Dialog(id: 24, text: "The giant possessed a grotesque appearance, with bulging muscles and veins snaking across its monstrous body. ", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
                Dialog(id: 25, text: "Its face was contorted with a menacing scowl, marked by sharp and jagged teeth that protruded from its snarling mouth.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
                Dialog(id: 26, text: "\"You…Steal…Buto Ijo…Property!\"", outcome: "Continue", nextDialogIDs: [27], character: .giant),
                Dialog(id: 27, text: "The words dripped with fury and a warning, conveying the severity of the offense committed.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
                Dialog(id: 28, text: "\"In the name of Buto Ijo, I beg your forgiveness.\"", outcome: "Continue", nextDialogIDs: [29], character: .mbokSrini),
                Dialog(id: 29, text: "The woman pleaded as her voice trembled with fear and humility. ", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
                Dialog(id: 30, text: "\"This mere human was only attempting to rescue this young girl.\"", outcome: "Continue", nextDialogIDs: [31], character: .mbokSrini),
                Dialog(id: 31, text: "Her voice quivered with sincerity as she implore for mercy.", outcome: "Continue", nextDialogIDs: [32, 33], character: .narrator),
                Dialog(id: 32, text: "BRANCH", outcome: "Crying out of fear", nextDialogIDs: [1000], character: .narrator),
                Dialog(id: 33, text: "\"Strong… Eyes… Quality… Livestock.\" he said with a sinister smile.", outcome: "Stare at Buto Ijo with anger", nextDialogIDs: [35], character: .giant),
                Dialog(id: 34, text: "BRANCH 2", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 35, text: "The giant’s colossal arm extended slowly toward you.", outcome: "Continue", nextDialogIDs: [36, 37], character: .narrator),
                Dialog(id: 36, text: "Tears streamed down your face as the colossal arm neared, poised to snatch you away. ", outcome: "Plea for assistance", nextDialogIDs: [38], character: .narrator),
                Dialog(id: 37, text: "BRANCH 3", outcome: "Exercise Storyweaver's authority", nextDialogIDs: [1000], character: .narrator),
                Dialog(id: 38, text: "Just as it was about to grasp you, the old woman swiftly shielded you within the safety of her embrace. ", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
                Dialog(id: 39, text: "\"I wish to negotiate…\"", outcome: "Continue", nextDialogIDs: [40], character: .mbokSrini),
                Dialog(id: 40, text: "Her tone took on an intimidating edge, hinting at a hidden strength within her frightened self.", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
                Dialog(id: 41, text: "Carefully, she placed you into a basket she had been carrying and cautiously approached the towering giant and engage in a conversation with him. ", outcome: "Continue", nextDialogIDs: [42, 43], character: .narrator),
                Dialog(id: 42, text: "Unable to discern their conversation, you anxiously watched and approached them as they exchanged words where you ears only caught two distinct words. ", outcome: "Try to listen", nextDialogIDs: [44], character: .narrator),
                Dialog(id: 43, text: "Unable to discern their conversation, you anxiously watched and approached them as they exchanged words where you ears only caught two distinct words. ", outcome: "Crawl to them", nextDialogIDs: [44], character: .narrator),
                Dialog(id: 44, text: "\"Eight… Years\"", outcome: "Continue", nextDialogIDs: [45], character: .giant),
                Dialog(id: 45, text: "Perplexed by the significance, you remained unaware of the context surrounding those words. At the same time, the giant’s demeanor shifted from hostility to one of contentment and satisfaction. With a renewed state of joy radiating from its body, the giant departed.", outcome: "Continue", nextDialogIDs: [46], character: .narrator),
                Dialog(id: 46, text: "(Fiuhh… That was close—)", outcome: "Continue", nextDialogIDs: [47], character: .storyweaver),
                Dialog(id: 47, text: "As you began to utter a breath of relief, the old grandma swiftly lifted you up and gently placed you on her embrace. With a fond smile on her face, she lovingly remarked, ", outcome: "Continue", nextDialogIDs: [48], character: .narrator),
                Dialog(id: 48, text: "\"Oh, you cute girl. How on earth did you manage to get yourself stuck in a cucumber?\" Her affectionate tone held a hint of amusement, highlighting the curious and perhaps comical nature of the predicament you found yourself in.", outcome: "Continue", nextDialogIDs: [49], character: .mbokSrini),
                Dialog(id: 49, text: "(Good question… Now, how should I evade?)", outcome: "Continue", nextDialogIDs: [50, 51], character: .storyweaver),
                Dialog(id: 50, text: "The woman's laughter filled the air as she beheld your expression, finding it utterly endearing. ", outcome: "Laugh", nextDialogIDs: [52], character: .narrator),
                Dialog(id: 51, text: "The woman's laughter filled the air as she beheld your expression, finding it utterly endearing. ", outcome: "Smile and look her in the eyes", nextDialogIDs: [52], character: .narrator),
                Dialog(id: 52, text: "\"You're such an adorable child!\" " , outcome: "Continue", nextDialogIDs: [53], character: .mbokSrini),
                Dialog(id: 53, text: "She exclaimed, her voice brimming with affection. Despite the recent perilous encounter, the woman remained steadfast and unwavering in your presence. ", outcome: "Continue", nextDialogIDs: [54], character: .narrator),
                Dialog(id: 54, text: "It was evident that she possessed a remarkable inner fortitude, determined to be a source of support and protection for you.", outcome: "Continue", nextDialogIDs: [55], character: .narrator),
                Dialog(id: 55, text: "\"I promise to raise you like my own child.\"", outcome: "Continue", nextDialogIDs: [56], character: .mbokSrini),
                Dialog(id: 56, text: "She whispered tenderly as she gently pressed her cheeks against yours — a gesture of affection and bonding. “You are the precious gift in my life, …”", outcome: "Continue", nextDialogIDs: [57], character: .narrator),
                
                // ENTER NAME //
                
                Dialog(id: 57, text: "\"Timun Mas! Timun Mas!\"", outcome: "Continue", nextDialogIDs: [58], character: .mbokSrini),
                Dialog(id: 58, text: "(She shouted the name repeatedly with a mixture of excitement and joy as she playfully lifted you into the air, gently throwing you up and catching you again. In that moment, a sense of comfort and belonging washed over you, knowing that you had found a loving guardian in this compassionate woman.)", outcome: "Continue", nextDialogIDs: [59], character: .narrator),
                Dialog(id: 59, text: "(Maybe… this once in a time feeling… is not bad at all)", outcome: "Continue", nextDialogIDs: [60], character: .storyweaver),
                
                // CHAPTER 2
                
                Dialog(id: 60, text: "Years had passed since the fateful encounter with your foster mother, Mbok Srini.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 61, text: "(The destiny she unfolded… The dreams she once had… All of those were shattered.)", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 62, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 63, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 64, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 65, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 66, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 67, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 68, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 69, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 70, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 71, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 72, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 73, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 74, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 75, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 76, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 77, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 78, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 79, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 80, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 81, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 82, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 83, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                
    ]
    
    // ACT 2
    
    static let DialogTreeAct2: [Dialog] = [
                Dialog(id: 0, text: "Years had passed since the fateful encounter with your foster mother, Mbok Srini.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 1, text: "(The destiny she unfolded… The dreams she once had… All of those were shattered.)", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 2, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 3, text: "Indeed, the burden of losing both her husband and her only child within such a short period of time is a weight that few can comprehend. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 4, text: "The pain and grief that Mbok Srini has endured surpass ordinary measures, leaving an indelible mark on her heart and soul. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 5, text: "It is a tragedy that tested the limits of human endurance and resilience.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 6, text: "To lose a life partner, the one with whom she had built dreams and shared countless cherished moments, is a devastating blow. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 7, text: "The absence of a beloved spouse leaves an emptiness that can only be understood by those who have experienced a similar loss.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 8, text: "And then, to face the unimaginable sorrow of losing her only child, the precious embodiment of her hopes and dreams, is a pain that cut deep into the core of a parent's being. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 9, text: "It shattered the very foundation of what it means to be a family, leaving an irreplaceable void that can never be fully filled.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 10, text: "The realization of the immense challenges she faced before your arrival amplified your admiration for her resilience and strength. ", outcome: "(Human… is truly fascinating)", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 11, text: "It was a testament to Mbok Srini’s extraordinary inner fortitude that she was able to open her heart to you, to provide love and care despite the immense pain she carried.", outcome: "(How is she able to endure that?)", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 12, text: "(Time flies slowly for me… and quickly for them…)", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 13, text: "These words captured the essence of the contrasting experiences of time between a Storyweaver like yourself and the mortal beings around you.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 14, text: "As you continued your life as Timun Mas, the passage of time became evident not only in the physical changes you observed in your foster mother's face, but also in her changing appetite and demeanor.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 15, text: "Despite more wrinkles that graced her features, a sign of her growing older and weaker, there is an unyielding hunger that seemed to possess her, urging her to eat heartily and fill her stomach to the brim.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 16, text: "It perplexed you, for the years that have passed should have brought a natural decline in her appetite and a diminished capacity to consume large quantities of food. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 17, text: "Yet, she persisted, driven by a determination to savor each morsel, to relish the flavors that life has to offer, and perhaps to fill an intangible void that resides within her.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 18, text: "While you may not fully understood her motivations or the deeper yearnings that drove her, you offered your unwavering support and presence. ", outcome: "(Human… is truly fascinating?)", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 19, text: "While you may not fully understood her motivations or the deeper yearnings that drove her, you offered your unwavering support and presence. ", outcome: "\"...\"", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 20, text: "You sat alongside her, sharing meals that had become moments of connection and nourishment not just for the body, but for the bond you share as well.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 21, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 22, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                Dialog(id: 23, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
                
    ]
}


