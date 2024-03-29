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
        Dialog(id: 0, text: "\"...\"", outcome: "", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 1, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Keep silent", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 2, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Try to move", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "(It's a little bit hard to breathe)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
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
    ]
    
    
    static let DialogTreeScene2: [Dialog] = [
        Dialog(id: 0, text: "As the sound of a fruit being sliced echoed through the air, the light surrounding you grew in intensity, gradually unveiling a face that emerged from the blinding light. Tears welled up in your eyes, yet amidst the misty vision, the visage became clearer.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "\"Oh you poor thing...\"", outcome: "Continue", nextDialogIDs: [2], character: .mbokSrini),
        Dialog(id: 2, text: "The elderly grandmother reached out and gently pulled you from the cramped space. ", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "As her eyes met yours, witnessing the tears streaming down your face, she offered a comforting smile and soothingly reassured, ", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"There, there, it must have been scary. You're safe now.\"", outcome: "Continue", nextDialogIDs: [5], character: .mbokSrini),
        Dialog(id: 5, text: "As she embraced you in a tender hug, an inexplicable warmth enveloped you, and a sense of comfort washed over your being. In that moment, the tears evaporated, replaced by a radiant smile.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The ground trembled beneath a colossal stomping sound, jolting you out of your joyful state. ", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "The grandmother's expression shifted from comfort to intensified fear, her features contorting with worry and concern.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "Within moments, a terrifying giant came into view, towering over everything in its path like a peak pine tree. ", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
    ]
    
    
    static let DialogTreeScene3: [Dialog] = [
        Dialog(id: 0, text: "The giant possessed a grotesque appearance, with bulging muscles and veins snaking across its monstrous body. ", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Its face was contorted with a menacing scowl, marked by sharp and jagged teeth that protruded from its snarling mouth.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "\"You…Steal…Buto Ijo…Property!\"", outcome: "Continue", nextDialogIDs: [3], character: .giant),
        Dialog(id: 3, text: "The words dripped with fury and a warning, conveying the severity of the offense committed.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"In the name of Buto Ijo, I beg your forgiveness.\"", outcome: "Continue", nextDialogIDs: [5], character: .mbokSrini, emotion: .scared),
        Dialog(id: 5, text: "The woman pleaded as her voice trembled with fear and humility. ", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "\"This mere human was only attempting to rescue this young girl.\"", outcome: "Continue", nextDialogIDs: [7], character: .mbokSrini, emotion: .scared),
        Dialog(id: 7, text: "Her voice quivered with sincerity as she implore for mercy.", outcome: "Continue", nextDialogIDs: [8, 9], character: .narrator),
        Dialog(id: 8, text: "\"Noisy… Livestock… You… DIE!\"", outcome: "Crying out of fear", nextDialogIDs: [21], character: .giant),
        Dialog(id: 9, text: "\"Strong… Eyes… Quality… Livestock.\" he said with a sinister smile.", outcome: "Stare at Buto Ijo with anger", nextDialogIDs: [11], character: .giant),
        Dialog(id: 10, text: "BRANCH 2", outcome: "Continue", nextDialogIDs: [1000], character: .narrator),
        Dialog(id: 11, text: "The giant’s colossal arm extended slowly toward you.", outcome: "Continue", nextDialogIDs: [12, 13], character: .narrator),
        Dialog(id: 12, text: "Tears streamed down your face as the colossal arm neared, poised to snatch you away. ", outcome: "Plea for assistance", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 13, text: "As the giant's enormous arm reached out, its shadow looming larger with each passing moment. Its enormous fingers closing in, inch by agonizing inch.", outcome: "Exercise Storyweaver's authority", nextDialogIDs: [23], character: .narrator), //sambung ke SUB ENDING 1
        Dialog(id: 14, text: "Just as it was about to grasp you, the old woman swiftly shielded you within the safety of her embrace. ", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "\"I wish to negotiate…\"", outcome: "Continue", nextDialogIDs: [16], character: .mbokSrini, emotion: .scared),
        Dialog(id: 16, text: "Her tone took on an intimidating edge, hinting at a hidden strength within her frightened self.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "Carefully, she placed you into a basket she had been carrying and cautiously approached the towering giant and engage in a conversation with him. ", outcome: "Continue", nextDialogIDs: [18, 19], character: .narrator),
        Dialog(id: 18, text: "Unable to discern their conversation, you anxiously watched and approached them as they exchanged words where you ears only caught two distinct words. ", outcome: "Try to listen", nextDialogIDs: [20], character: .narrator),
        Dialog(id: 19, text: "Unable to discern their conversation, you anxiously watched and approached them as they exchanged words where you ears only caught two distinct words. ", outcome: "Crawl to them", nextDialogIDs: [20], character: .narrator),
        Dialog(id: 20, text: "\"Eight… Years\"", outcome: "Continue", nextDialogIDs: [], character: .giant),
        
        // SUB ENDING 0 dialogue
        
        Dialog(id: 21, text: "He said with a voice tinged with annoyance.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "As the giant's enormous arm reached out, its shadow looming larger with each passing moment. Its enormous fingers closing in, inch by agonizing inch.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "Panic surged within you as you scrambled to escape the clutches of the impending grasp.", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "Your heart raced like a wild stallion, pounding against your chest with a deafening intensity. ", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The air thickened with trepidation, and you could almost taste the imminent danger that lurked within the grasp of those enormous fingers.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "(I shall not die in the hand of this vile creature…)", outcome: "Continue", nextDialogIDs: [27], character: .storyweaver),
        Dialog(id: 27, text: "With resolute purpose, you made the harrowing decision to sever the connection, to separate your consciousness from the character you had embodied.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        Dialog(id: 28, text: "Through sheer desperation, you mustered every ounce of your authority as the Storyweaver — to elude the clutches of the vile creature.", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "It was a heartbreaking choice, for it meant leaving the woman and the vessel you once inhabited to their own destinies, their own battles against the encroaching monstrosity.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        // SFX
        Dialog(id: 30, text: "Returning to the sanctity of your abode, the domain of tales, you collapsed onto its hallowed ground, your body trembling with exhaustion and relief. ", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "Your breaths came in ragged gasps as you grasped onto the threads of reality, grateful for the narrow escape from the clutches of the giant.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "The weight of the encounter hung heavy in the air, an indelible mark etched upon your consciousness.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        
        // START CUTSCENE
        
        Dialog(id: 33, text: "A smile tugged at the corners of your weary lips.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "It was a smile born from the knowledge that you had cheated death once again, that you had outwitted the forces of darkness and emerged victorious.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "It was a smile that held both the weight of the world and the lightness of triumph.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        // SFX
        Dialog(id: 36, text: "But even as you allowed the tendrils of relief to seep into your weary bones, a fire of determination blazed within your eyes. ", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "You yearned for another tale, another folklore that would captivate your imagination and stir your soul.", outcome: "Continue", nextDialogIDs: [38], character: .narrator),
        Dialog(id: 38, text: "For you had emerged from the clutches of the giant, alive and breathing.", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
        Dialog(id: 39, text: "And in that precious breath…", outcome: "Continue", nextDialogIDs: [40], character: .narrator),
        Dialog(id: 40, text: "You found the strength to seek tales that would ignite your spirit…", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
        Dialog(id: 41, text: "Without plunging you into the perilous depths of oblivion…", outcome: "Continue", nextDialogIDs: [0], character: .narrator),
        
        // END DIALOGUE SUB ENDING 0
        
        //********************************************************************************************************************
        
        // SUB ENDING 1 sambung dri dialogue id 23
        
        
        
    ]
    
    
    
    static let DialogTreeScene4: [Dialog] = [
        Dialog(id: 0, text: "Perplexed by the significance, you remained unaware of the context surrounding those words. At the same time, the giant’s demeanor shifted from hostility to one of contentment and satisfaction. With a renewed state of joy radiating from its body, the giant departed.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "(Fiuhh… That was close—)", outcome: "Continue", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 2, text: "As you began to utter a breath of relief, the old grandma swiftly lifted you up and gently placed you on her embrace. With a fond smile on her face, she lovingly remarked, ", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"Oh, you cute girl. How on earth did you manage to get yourself stuck in a cucumber?\" Her affectionate tone held a hint of amusement, highlighting the curious and perhaps comical nature of the predicament you found yourself in.", outcome: "Continue", nextDialogIDs: [4], character: .mbokSrini),
        Dialog(id: 4, text: "(Good question… Now, how should I evade?)", outcome: "Continue", nextDialogIDs: [5, 6], character: .storyweaver),
        Dialog(id: 5, text: "The woman's laughter filled the air as she beheld your expression, finding it utterly endearing. ", outcome: "Laugh", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 6, text: "The woman's laughter filled the air as she beheld your expression, finding it utterly endearing. ", outcome: "Smile and look her in the eyes", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "\"You're such an adorable child!\" " , outcome: "Continue", nextDialogIDs: [8], character: .mbokSrini),
        Dialog(id: 8, text: "She exclaimed, her voice brimming with affection. Despite the recent perilous encounter, the woman remained steadfast and unwavering in your presence. ", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "It was evident that she possessed a remarkable inner fortitude, determined to be a source of support and protection for you.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "\"I promise to raise you like my own child.\"", outcome: "Continue", nextDialogIDs: [11], character: .mbokSrini),
        Dialog(id: 11, text: "She whispered tenderly as she gently pressed her cheeks against yours — a gesture of affection and bonding. “You are the precious gift in my life, …”", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        
        // ENTER NAME //
        
        Dialog(id: 12, text: "\"Timun Mas! Timun Mas!\"", outcome: "Continue", nextDialogIDs: [13], character: .mbokSrini),
        Dialog(id: 13, text: "(She shouted the name repeatedly with a mixture of excitement and joy as she playfully lifted you into the air, gently throwing you up and catching you again. In that moment, a sense of comfort and belonging washed over you, knowing that you had found a loving guardian in this compassionate woman.)", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "(Maybe… this once in a time feeling… is not bad at all)", outcome: "Continue", nextDialogIDs: [], character: .storyweaver),
        
    ]
    
    // ACT 2
    
    static let DialogTreeScene5: [Dialog] = [
        Dialog(id: 0, text: "Years had passed since the fateful encounter with your foster mother, Mbok Srini.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "(The destiny she unfolded… The dreams she once had… All of those were shattered.)", outcome: "Continue", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 2, text: "As you reflected on your shared journey, you uncovered some heart-wrenching truths about her life prior to your arrival. ", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Indeed, the burden of losing both her husband and her only child within such a short period of time is a weight that few can comprehend. ", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "The pain and grief that Mbok Srini has endured surpass ordinary measures, leaving an indelible mark on her heart and soul. ", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "It is a tragedy that tested the limits of human endurance and resilience.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "To lose a life partner, the one with whom she had built dreams and shared countless cherished moments, is a devastating blow. ", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "The absence of a beloved spouse leaves an emptiness that can only be understood by those who have experienced a similar loss.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "And then, to face the unimaginable sorrow of losing her only child, the precious embodiment of her hopes and dreams, is a pain that cut deep into the core of a parent's being. ", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "It shattered the very foundation of what it means to be a family, leaving an irreplaceable void that can never be fully filled.", outcome: "Continue", nextDialogIDs: [10, 11], character: .narrator),
        Dialog(id: 10, text: "The realization of the immense challenges she faced before your arrival amplified your admiration for her resilience and strength. ", outcome: "(Human… is truly fascinating)", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 11, text: "The realization of the immense challenges she faced before your arrival amplified your admiration for her resilience and strength. ", outcome: "(How is she able to endure that?)", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "It was a testament to Mbok Srini’s extraordinary inner fortitude that she was able to open her heart to you, to provide love and care despite the immense pain she carried.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "(Time flies slowly for me… and quickly for them…)", outcome: "Continue", nextDialogIDs: [14], character: .storyweaver),
        Dialog(id: 14, text: "These words captured the essence of the contrasting experiences of time between a Storyweaver like yourself and the mortal beings around you.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "As you continued your life as Timun Mas, the passage of time became evident not only in the physical changes you observed in your foster mother's face, but also in her changing appetite and demeanor.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "Despite more wrinkles that graced her features, a sign of her growing older and weaker, there is an unyielding hunger that seemed to possess her, urging her to eat heartily and fill her stomach to the brim.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "It perplexed you, for the years that have passed should have brought a natural decline in her appetite and a diminished capacity to consume large quantities of food. ", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "Yet, she persisted, driven by a determination to savor each morsel, to relish the flavors that life has to offer, and perhaps to fill an intangible void that resides within her.", outcome: "Continue", nextDialogIDs: [19, 20], character: .narrator),
        Dialog(id: 19, text: "While you may not fully understood her motivations or the deeper yearnings that drove her, you offered your unwavering support and presence. ", outcome: "(Human… is truly fascinating?)", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 20, text: "While you may not fully understood her motivations or the deeper yearnings that drove her, you offered your unwavering support and presence. ", outcome: "(...)", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "You sat alongside her, sharing meals that had become moments of connection and nourishment not just for the body, but for the bond you share as well.", outcome: "Continue", nextDialogIDs: [0], character: .narrator)
        
    ]
    
    
    static let DialogTreeScene6: [Dialog] = [
        Dialog(id: 0, text: "As the sun rose in the sky and casting its warm rays upon the world, you know that it was time to embark on…", outcome: "Continue", nextDialogIDs: [1,2], character: .narrator),
        Dialog(id: 1, text: "\"I will be on my way now to the Realm of sleep and laziness, dear Mother.\"", outcome: "Your uninterrupted mortal sleep", nextDialogIDs: [6], character: .timunMas),
        Dialog(id: 2, text: "\"I will be doing the yard, dear Mother.\"", outcome: "Your daily routine", nextDialogIDs: [3], character: .timunMas),
        Dialog(id: 3, text: "Your determined words brought a smile to your mother. Mbok Srini looked at you with a mix of pride and appreciation.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"Take your time, Timun Mas.\"", outcome: "Continue", nextDialogIDs: [5], character: .mbokSrini),
        Dialog(id: 5, text: "\"The yard will flourish under your loving touch. I am grateful for all the effort you put into making our surroundings beautiful.\"", outcome: "Continue", nextDialogIDs: [], character: .mbokSrini, emotion: .happy),
        
        
        // SUB ENDING 2 START
        
        Dialog(id: 6, text: "Your voice laced with weariness and a hint of longing for rest.", outcome: "Continue", nextDialogIDs: [7], character: .storyweaver),
        Dialog(id: 7, text: "A tender smile graced your mother's lips as she disappeared into the kitchen.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "Moments later, she emerged with a small cup, its contents steaming with fragrant warmth.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "\"Before that, you should drink this.\"", outcome: "Continue", nextDialogIDs: [10], character: .mbokSrini),
        Dialog(id: 10, text: "She said, extending the cup towards you.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "\"This herbal concoction will help you sleep better, my child.\"", outcome: "Your uninterrupted mortal sleep", nextDialogIDs: [12], character: .mbokSrini),
        Dialog(id: 12, text: "Grateful for your mother's care, you accepted the cup without hesitation.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "The aroma wafting from it was both soothing and invigorating, promising a respite from the tumultuous events that had unfolded.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "With a mix of curiosity and trust, you brought the cup to your lips and took a deep sip.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "The taste was unexpectedly sour, but a refreshing coolness spread through your body as you swallowed the herbal elixir. ", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "(Strange…)", outcome: "Continue", nextDialogIDs: [17], character: .storyweaver),
        Dialog(id: 17, text: "The weariness that had settled in your bones deepened, a heaviness that seemed to pull you towards slumber, even though as a Storyweaver, sleep was not a necessity.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "Yet, you paid it no mind, assuming it was merely the effect of the herbs.", outcome: "Continue", nextDialogIDs: [19], character: .narrator),
        Dialog(id: 19, text: "With heavy eyelids, you bid your mother goodnight and made your way to your room. The tranquility of the space enveloped you, its familiar comforts soothing your weary soul.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        Dialog(id: 20, text: "Without further delay, you surrendered to the embrace of the bed, allowing its softness to cradle your fatigued body.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "In that ethereal moment, as your consciousness relinquished its grip on reality…", outcome: "Continue", nextDialogIDs: [22], character: .mbokSrini),
        Dialog(id: 22, text: "You glimpsed a fleeting sadness in your mother's eyes, a profound longing that echoed in her expression.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "(I wonder… what the story… will unfo—)", outcome: "Continue", nextDialogIDs: [24], character: .storyweaver),
        Dialog(id: 24, text: "But the weight of weariness and the allure of rest eclipsed any lingering questions.", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "You surrendered to the pull of sleep, drifting away from the waking world, unaware of the shadows that may linger beneath the surface of dreams.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        // lanjut ke dialogtreeSE2scene2
    ]
    
    static let DialogTreeSE2Scene2: [Dialog] = [
        Dialog(id: 0, text: "\"Urghhh...\"", outcome: "Continue", nextDialogIDs: [1], character: .storyweaver),
        Dialog(id: 1, text: "The jolt of impact against the ground jolted you awake, disoriented from the sudden awakening.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "Gravity tugged at your limbs, a reminder of the physical realm you found yourself in.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Blinking away the remnants of sleep, you surveyed your surroundings, only to find the sun had already set, casting long shadows that danced across the room.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "(Something felt amiss…)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
        Dialog(id: 5, text: "Normally, it was Mbok Srini who would rouse you from your sleep, ensuring you were up and about before the sun dipped below the horizon.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "But now, the absence of her presence weighed heavily upon you, adding to the growing unease that permeated the air.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "The silence enveloped the house, stretching into an oppressive blanket that mirrored the turmoil within you.", outcome: "Continue",  nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "With cautious steps, you traversed the rooms with every corner of the house seemed to hold a secret, urging you to uncover the truth.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "You moved through each room, carefully inspecting the familiar objects and cherished memories that adorned the walls.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "It was a drawing, carefully preserved and framed, depicting your mother embracing you when you were just a toddler.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "The memory it evoked tugged at your heart, reminding you of the time when you, as Timun Mas, first ventured into this realm.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "It was a treasure that held immense sentimental value, a symbol of the bond you shared with Mbok Srini.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "But as your gaze shifted, you noticed the torn paper lying beside the cherished drawing, its jagged edges a stark contrast to the gentle embrace depicted in the artwork.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "Curiosity mingled with trepidation as you gingerly picked up the pieces, a sense of foreboding creeping into your thoughts.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        
        // PUZZLE kertas jadi tulisan
        
        Dialog(id: 16, text: "With painstaking care, you attempted to fit the fragments together like a puzzle, hoping to uncover the message hidden within. As each piece found its place, the words began to form, etching themselves onto the torn canvas of your perception.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "\"I am leaving the house. I have always lied to myself that I am happy whenever you are with me - But in truth, I was never happy. You are just a replacement that I brought home out of whim because I just lost my son. Now I don't need you so good bye.", outcome: "Continue",  nextDialogIDs: [], character: .narrator),
        
    ]
    
    static let DialogTreeSE2Scene3: [Dialog] = [
        Dialog(id: 0, text: "As you read the words penned by Mbok Srini, you were confronted with a jumble of emotions.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Anger, confusion, and sorrow battled within you, intertwining their tendrils and weaving a complex tapestry of pain.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "Tears welled up in your eyes as the pain in your heart intensified.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "(…What is happening?)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
        Dialog(id: 5, text: "The consciousness of Timun, overwhelmed by a storm of rage and betrayal, surged within you, demanding to be acknowledged and expressed.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The realization that you had been deceived, that the bond you had cherished with Mbok Srini was built on a foundation of falsehood, pierced through your soul.", outcome: "Continue", nextDialogIDs: [7,8], character: .narrator),
        Dialog(id: 7, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 8, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she discards me in such heartless manner?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "As the evil laughter of Buto Ijo pierced through the air, your attention snapped back to the present moment.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The puzzle pieces began to align, and the truth behind Buto Ijo’s sinister smile and your foster mother's lingering sadness.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "The realization hit you like a wave, and your dual consciousness shifted.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "As the consciousness of Timun Mas, the daughter of Mbok Srini, took over, a wave of determination and concern washed over you.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "Without a moment's hesitation, your body moved on its own accord, drawn towards the sound of Buto Ijo's laughter.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Your steps quickened, driven by both worry for Mbok Srini's safety and a burning desire to confront her about the truth revealed in the letter.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE2Scene4: [Dialog] = [
        Dialog(id: 0, text: "You set foot on the lush field, where memories of cultivating trees and cucumbers with your foster mother resurfaced.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "\"Sacrificing… Yourself… Protecting… Child… For… Eight… Years… Funny.\"", outcome: "Continue", nextDialogIDs: [2], character: .giant),
        Dialog(id: 2, text: "As Timun Mas' consciousness braced itself to confront the colossal giant, the weight of your dual existence as both a Storyweaver and a protagonist bore down upon you. The rules of your role echoed in your mind, urging restraint, forbidding direct intervention in the narrative's evolution.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "But the pain of Mbok Srini's betrayal clawed at your soul, threatening to consume the flickering flame of trust that had remained. The truth, whispered in the shadows of Buto Ijo's laughter, seeped into your consciousness like poison.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"Said… Child… As… Regret...\"", outcome: "Continue", nextDialogIDs: [5], character: .giant),
        Dialog(id: 5, text: "Your steps faltered, a tempest of conflicting emotions raging within you.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The ground beneath you seemed to tremble, mirroring the tumultuous storm brewing within your heart.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "\"But… Said… Child… Best… Gift… Funny!\"", outcome: "Continue", nextDialogIDs: [8], character: .giant),
        Dialog(id: 8, text: "The betrayal you had felt was tempered by the realization that Mbok Srini had come to love and cherish you as her own daughter, despite the circumstances of your arrival.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "Your consciousness as Timun Mas wavered, torn between the hurt caused by the revelation and the undeniable bond that had formed between you and Mbok Srini.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The weight of her words settled upon you, their impact seeping into your heart. ", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "It was a moment of vulnerability, of recognizing the depth of emotions that had entangled your lives.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "\"Failure… Of… A… MOTHER!\"", outcome: "Continue", nextDialogIDs: [13], character: .giant),
        Dialog(id: 13, text: "Buto Ijo's spiteful words reverberated through the air, igniting a fierce blaze of anger within you.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "The spark of indignation surged through your veins, fueling your determination to confront the twisted giant.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "As a Storyweaver, you understood the delicate balance between maintaining the integrity of the narrative and embracing your role as Timun Mas, the embodiment of emotions and agency within the story.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "You were faced with a choice…", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "To remain detached as the Storyweaver or to embrace your role as Timun Mas, to confront the emotions that swelled within you and seek resolution.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "(…So, what should we become?)", outcome: "Continue", nextDialogIDs: [19, 20], character: .narrator),
        Dialog(id: 19, text: "In a moment of agonizing decision, you embraced your role as the Storyweaver, tethered to the rule of non-intervention, despite the raging tempest of fury that threatened to consume you. ", outcome: "The Storyweaver", nextDialogIDs: [28], character: .narrator), // SUB ENDING 2-1
        Dialog(id: 20, text: "\"She is not a failure, Buto Ijo!\"", outcome: "Timun Mas", nextDialogIDs: [21], character: .timunMas, emotion: .angry),
        Dialog(id: 21, text: "You said harshly, your voice filled with rage.", outcome: "Continue", nextDialogIDs: [22], character: .timunMas),
        Dialog(id: 22, text: "\"We all make mistakes, but your mistake deserved is irredeemable. You may have started as a character in a tale, but through the agony and hatred you have given me, you became a vile creature to be removed in every sense of the word.\"", outcome: "Continue", nextDialogIDs: [23], character: .timunMas, emotion: .angry),
        Dialog(id: 23, text: "\"Cucumber… Child… Can’t… Defeat… Buto Ijo!\"", outcome: "Continue", nextDialogIDs: [24], character: .giant),
        Dialog(id: 24, text: "As Buto Ijo's taunts echoed through the air, you felt a surge of determination and resilience coursing through your veins.", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "You were no longer just a bystander in this story; you had become an active character, ready to protect and fight for those you cherished.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "In that moment, your mind brimmed with the possibilities that the narrative could unfold.", outcome: "Continue", nextDialogIDs: [27], character: .narrator),
        Dialog(id: 27, text: "As a Storyweaver, you delighted in the unexpected twists and turns, and you reveled in the power of the story to shape the outcome.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
        // SUB ENDING 2-1
        
        Dialog(id: 28, text: "With unwavering resolve, you mustered every ounce of authority as the weaver of tales, severing the connection and forcibly detaching your consciousness from the character you had inhabited.", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "It was a harrowing choice, tearing yourself away from the vessel that had held your essence, leaving him to face his own destiny, grappling with the heart-wrenching loss of their beloved mother.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "Retreating to the sanctity of your abode, the domain of endless tales, you collapsed onto the hallowed ground, your body trembling with exhaustion and the weight of immeasurable grief.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "The encounter with the vile creature had left an indelible mark upon your consciousness, its echoes reverberating through the very fabric of your being.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        // START CUTSCENE
        
        Dialog(id: 32, text: "(…)", outcome: "Continue", nextDialogIDs: [33], character: .storyweaver),
        Dialog(id: 33, text: "Helplessness washed over you, as you pondered the fate of the character who had regarded you as their cherished child.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "You were grateful for the love they bestowed upon you despite your immense power.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "Yet, amidst the depths of sorrow that threatened to engulf you, a spark of unwavering determination ignited within your eyes.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        Dialog(id: 36, text: "Though wearied and battered, you yearned for the allure of another tale…", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "Another folklore that would kindle the flames of your spirit and breathe life into your weary soul.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        // END CUTSCENE
    ]
    
    static let DialogTreeSE2Scene4a: [Dialog] = [
        Dialog(id: 0, text: "Your consciousness as Timun Mas melded with the creative essence of the storyweaver, weaving a plan that transcended the bounds of conventional warfare.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Harnessing the full might of your authority as a Storyweaver, you stretched forth your hand with fingers trembling with raw power.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "With a resolute gesture, you delved into the depths of your pocket, weaving an intricate web of magic that defied the boundaries of reality itself.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"Hahaha…\"", outcome: "Continue", nextDialogIDs: [4], character: .giant),
        Dialog(id: 4, text: "Buto Ijo's laughter echoed through the field, his confidence seemingly unshaken by the small object you held in your hand.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "You raised an eyebrow, maintaining your smirk as you met Buto Ijo's gaze.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The air around you crackled with a sense of anticipation, as if the very fabric of the narrative was aligning itself with your words.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        
        // CUTSCENE
        
        Dialog(id: 7, text: "\"You see, Buto Ijo, defeating you won't be as straightforward as you think.\"", outcome: "Continue", nextDialogIDs: [8], character: .timunMas, emotion: .angry),
        Dialog(id: 8, text: "you declared, your voice carrying an air of intrigue.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "\"For within the realm of storytelling, the most unexpected things hold immense power.\"", outcome: "Continue", nextDialogIDs: [10], character: .timunMas, emotion: .angry),
        Dialog(id: 10, text: "\"Livingstock.. Talk… Too… MUCH!\"", outcome: "Continue", nextDialogIDs: [11], character: .giant),
        Dialog(id: 11, text: "As Buto Ijo charged forward, his eyes filled with determination, you remained calm and focused.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "With deliberate movements, you unfolded the small object in your hand and spread them on your path, revealing a set of seeds that glimmered with an otherworldly aura.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        
        //END CUTSCENE
        
        //MINIGAME SWIPE ZIG ZAG CABANG
        
        Dialog(id: 13, text: "Memories of your initial encounter with Mbok Srini flooded your mind, reminding you of the time when you were trapped within a cucumber and she came to your rescue.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Drawing upon that connection and the power of storytelling, you scattered the cucumber seeds along the ground before you.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "In a matter of seconds, an incredible transformation began to unfold. Sprouts emerged from the earth, growing rapidly and reaching towards the sky.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "To Buto Ijo's astonishment, the sprouts swiftly grew into luscious cucumber plants, their vines intertwining and spreading across the field.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "Within moments, a dense network of cucumber-filled foliage had formed, creating a natural barrier that hindered Buto Ijo's movement.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "\"Hard… Move… Annoying!\"", outcome: "Continue", nextDialogIDs: [19], character: .giant),
        Dialog(id: 19, text: "With a surge of strength, he managed to tear himself away from the entanglement, leaving behind remnants of broken vines.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        
        //MINIGAME SWIPE BATANG
        
        Dialog(id: 20, text: "Undeterred by his escape, you remained composed and drawing upon the memories of your exploration with Mbok Srini in the bamboo forest.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "You unfolded another small object in your hand and scattered the object on the path before you.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "In that instant, dozens of needles transformed into towering bamboo shoots, their long and sharp forms reaching towards the sky.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "Buto Ijo, now confronted with the unexpected obstacle, found himself surrounded by the towering bamboo. ", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "The dense grove of bamboo restricted his movement, preventing him from advancing further towards you.", outcome: "Timun Mas", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The sharpness of the bamboo shoots posed a threat, causing him to tread with caution to avoid being impaled.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "\"Hurts… In… The… WAY!\"", outcome: "Continue", nextDialogIDs: [27], character: .giant),
        Dialog(id: 27, text: "As Buto Ijo broke free from the entanglement of the bamboo, his movements slowed, and he winced in pain from the sharp bamboo shoots that had grazed him.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        
        //MINIGAME HORIZONTAL SWIPE LAUT
        
        Dialog(id: 28, text: "Remembering the cherished memories of cooking with Mbok Srini, you unfolded another small object and tossed it onto the ground. ", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "The scattered salts transformed into a vast expanse of water, stretching out before you like a boundless sea.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "With each step he took, the water rose higher, reaching his ankles, then his knees, and soon it reached his waist.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "Buto Ijo's movements became labored as he struggled against the force of the water, its currents pulling at him with relentless strength.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "The deep sea before him posed a new challenge, threatening to engulf and submerge him if he dared to advance.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "But once again, he managed to escape by swimming on the sea. As Buto Ijo neared, fueled by his determination to defeat you, a surge of anger coursed through your veins.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "The recent tragedy that had befallen your beloved mother replayed in your mind, igniting a fiery rage within you.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "The boundary between the Storyweaver and Timun Mas blurred as both consciousnesses merged into a singular force.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        
        //MINIGAME SWIPE MIRING
        
        Dialog(id: 36, text: "With a swift motion, you unfolded another small object, revealing a cluster of shrimp paste. Channeling your emotions into the act, you cast the shrimp paste onto the ground. ", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "In a dramatic transformation, the paste melted and melded with the surrounding terrain, creating a scorching sea of boiling mud.", outcome: "Continue", nextDialogIDs: [38], character: .narrator),
        Dialog(id: 38, text: "The hot sea of mud materialized instantly, its intense heat radiating and filling the air. Buto Ijo, caught off guard by the sudden change, found himself sinking into the murky depths of the mud.", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
        Dialog(id: 39, text: "The searing heat made each movement a struggle, as he fought against the unbearable temperatures.", outcome: "Timun Mas", nextDialogIDs: [40], character: .narrator),
        Dialog(id: 40, text: "With each passing moment, his strength waned, and despair flickered in his eyes. The once-mighty giant, now reduced to a fearful and defeated creature, gazed up at you with wide eyes filled with terror and confusion.", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
        Dialog(id: 41, text: "\"Who… Are… You?\"", outcome: "Continue", nextDialogIDs: [42], character: .giant),
        Dialog(id: 42, text: "\"I am the Storyweaver.\"", outcome: "Continue", nextDialogIDs: [43], character: .timunMas, emotion: .angry),
        Dialog(id: 43, text: "You responded, your voice steady and filled with a newfound sense of purpose. ", outcome: "Continue", nextDialogIDs: [44], character: .narrator),
        Dialog(id: 44, text: "\"But for now, I am Timun Mas.\"", outcome: "Continue", nextDialogIDs: [45], character: .timunMas, emotion: .angry),
        Dialog(id: 45, text: "The words carried the weight of your dual existence as both the weaver of tales and the character immersed in the story.", outcome: "Continue", nextDialogIDs: [46], character: .narrator),
        Dialog(id: 46, text: "You stood there, witnessing the lifeless giant being consumed by the engulfing flames and mud.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE2Scene5: [Dialog] = [
        
        //CUTSCENE START
        Dialog(id: 0, text: "\"Thank you, Mbok Srini.\"", outcome: "Continue", nextDialogIDs: [1], character: .timunMas, emotion: .crying),
        Dialog(id: 1, text: "A mix of emotions washed over you—a blend of gratitude, love, and regret. ", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "You couldn't help but offer a tender smile, despite the sourness that tinged it.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"You will always be the greatest gift in our life.\"", outcome: "Continue", nextDialogIDs: [4], character: .timunMas, emotion: .happy),
        Dialog(id: 4, text: "You whispered, the words carrying the depth of your love, gratitude, and... regret.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "And so, with a final breath laden with both stress and acceptance, you surrendered to the embrace of the story's end, aware that the narrative of Timun Mas would persisted, moving forward without the intervention of a Storyweaver.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        
        //END CUTSCENE
        
        Dialog(id: 6, text: "The chapter of Timun Mas had come to an end for you, O’ Storyweaver.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeScene7: [Dialog] = [
        Dialog(id: 0, text: "With her words of encouragement resonating in your heart, you step out into the fresh morning air, feeling a sense of purpose and responsibility. ", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "As you survey the yard, you notice the blades of grass gently swaying in the breeze, and the colorful blossoms that dot the landscape.", outcome: "Continue", nextDialogIDs: [2, 5, 7, 8], character: .narrator),
        Dialog(id: 2, text: "(I’ll start with tending the plants…)", outcome: "Watering Plant", nextDialogIDs: [3], character: .timunMas),
        Dialog(id: 3, text: "With each droplet that nourished the thirsty earth, the plants seemed to come alive, responding to the rejuvenating touch of water.", outcome: "Watering plant", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "(Vibrant flowers, once slightly wilted, regain their luster and stand tall in vibrant hues… Such joy to witness.)", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 5, text: "Each tug of the weed brought a satisfying release, as if removing a burden from the earth and allowing surrounding plants to breathe and thrive.", outcome: "Pulling Weeds", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "(The vibrant flowers and verdant foliage can now stretch their roots and soak up the nutrients of the soil without competition… Such refreshing to view.)", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 7, text: "As the shears met the branches, a satisfying snip fills the air, marking the transformation taking place. The once unruly bushes started to take on a more defined and refined form.", outcome: "Trim bushes", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 8, text: "(The garden, now with its revitalized bushes, exudes a sense of tranquility and order. It is a symphony of nature and human intervention. Such fascination to look.)", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
    ]
    
    static let DialogTreeScene8: [Dialog] = [
        Dialog(id: 0, text: "Mbok Srini arrived with her face beaming with joy as she surveyed the transformed yard. ", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "\"The yard is looking beautiful!\"", outcome: "Continue", nextDialogIDs: [2], character: .mbokSrini, emotion: .happy),
        Dialog(id: 2, text: "she exclaimed with delight. Her words filled me with a sense of accomplishment, knowing that my efforts had not gone unnoticed.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"It must have been tiring.\"", outcome: "Continue", nextDialogIDs: [4], character: .mbokSrini),
        Dialog(id: 4, text: "she continued, her voice filled with concern.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "\"Why don't you take a well-deserved rest and go somewhere for a while? I will take care of cleaning the house.\"", outcome: "Continue", nextDialogIDs: [6], character: .mbokSrini),
        Dialog(id: 6, text: "The sun now stood high in the sky, beckoning you towards your next adventure into the realms of this folklore. ", outcome: "Continue", nextDialogIDs: [7, 8], character: .narrator),
        Dialog(id: 7, text: "\"Now, go on! Take your time.\"", outcome: "\"I think I’ll take a short break.\"", nextDialogIDs: [9], character: .mbokSrini),
        Dialog(id: 8, text: "\"I’ll be resting now, dear Mother.\"", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [10], character: .timunMas), //start SUB ENDING 3
        Dialog(id: 9, text: "With a nod and a grateful smile, you acknowledged her advice and headed out to seize the day. With a final glance back at my foster mother, you began to make your way towards the dense forest that lay just beyond your humble abode.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
        // SUB ENDING 3 dialogue
        
        Dialog(id: 10, text: "Your voice laced with weariness and a hint of longing for rest.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "A tender smile graced your mother's lips as she presented you with a small cup, its contents steaming with fragrant warmth.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "\"Before that, you should drink this.\"", outcome: "Continue", nextDialogIDs: [13], character: .mbokSrini),
        Dialog(id: 13, text: "\"It must have been tiring.\"", outcome: "Continue", nextDialogIDs: [14], character: .mbokSrini),
        Dialog(id: 14, text: "She said, extending the cup towards you.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "\"This herbal concoction will help you sleep better, my child.\"", outcome: "Continue", nextDialogIDs: [16], character: .mbokSrini),
        Dialog(id: 16, text: "Grateful for your mother's care, you accepted the cup without hesitation.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "The aroma wafting from it was both soothing and invigorating, promising a respite from the tumultuous events that had unfolded.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "With a mix of curiosity and trust, you brought the cup to your lips and took a deep sip.", outcome: "Continue", nextDialogIDs: [19], character: .narrator),
        Dialog(id: 19, text: "The taste was unexpectedly sour, but a refreshing coolness spread through your body as you swallowed the herbal elixir.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        
        Dialog(id: 20, text: "(Strange…)", outcome: "Continue", nextDialogIDs: [21], character: .storyweaver),
        Dialog(id: 21, text: "The weariness that had settled in your bones deepened, a heaviness that seemed to pull you towards slumber, even though as a Storyweaver, sleep was not a necessity.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "Yet, you paid it no mind, assuming it was merely the effect of the herbs.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "With heavy eyelids, you bid your mother goodnight, feeling a mixture of comfort and curiosity swirling within you.", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "The tranquility of the space enveloped you, wrapping its familiar arms around your weary soul.", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The soft whispers of the wind lulled you into a state of peaceful surrender.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "Without further delay, you sought the perfect spot to lay down, a sanctuary amidst the grass that awaited your embrace.", outcome: "Continue", nextDialogIDs: [27], character: .narrator),
        Dialog(id: 27, text: "As your body met the ground, a gentle sigh escaped your lips, releasing the tension that had accumulated throughout the day.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        Dialog(id: 28, text: "The earth's tender touch cradled your fatigued form, offering solace and respite.", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "In that ethereal moment, as your consciousness began to loosen its grip on reality, a flicker of sadness, an echo of longing, passed fleetingly through your mother's eyes.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        
        Dialog(id: 30, text: "It was a fleeting glimpse into the depths of her being, a question left unanswered, a story untold.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "(I wonder… what the story… will unfo—)", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "You surrendered to the pull of sleep, drifting away from the waking world, unaware of the shadows that may lurk beneath the surface of your subconscious.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        // SUB ENDING 3 Scene 1 end
    ]
    
    static let DialogTreeSE3Scene2: [Dialog] = [
        Dialog(id: 0, text: "Blinking away the remnants of sleep, you surveyed your surroundings, only to find the sun had already set, casting long shadows that danced across the yard.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "(Something felt amiss…)", outcome: "Continue", nextDialogIDs: [2],  character: .storyweaver),
        Dialog(id: 2, text: "Normally, it was Mbok Srini who would rouse you from your sleep, ensuring you were up and about before the sun dipped below the horizon.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "But now, the absence of her presence weighed heavily upon you, adding to the growing unease that permeated the air.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "The silence enveloped the house, stretching into an oppressive blanket that mirrored the turmoil within you.", outcome: "Continue",  nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "With cautious steps, you traversed the rooms with every corner of the house seemed to hold a secret, urging you to uncover the truth.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "You moved through each room, carefully inspecting the familiar objects and cherished memories that adorned the walls.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "It was a drawing, carefully preserved and framed, depicting your mother embracing you when you were just a toddler.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "The memory it evoked tugged at your heart, reminding you of the time when you, as Timun Mas, first ventured into this realm.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "It was a treasure that held immense sentimental value, a symbol of the bond you shared with Mbok Srini.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "But as your gaze shifted, you noticed the torn paper lying beside the cherished drawing, its jagged edges a stark contrast to the gentle embrace depicted in the artwork.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "Curiosity mingled with trepidation as you gingerly picked up the pieces, a sense of foreboding creeping into your thoughts.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        
        // PUZZLE kertas jadi tulisan
        
        Dialog(id: 13, text: "With painstaking care, you attempted to fit the fragments together like a puzzle, hoping to uncover the message hidden within. As each piece found its place, the words began to form, etching themselves onto the torn canvas of your perception.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "\"I am leaving the house. I have always lied to myself that I am happy whenever you are with me - But in truth, I was never happy. You are just a replacement that I brought home out of whim because I just lost my son. Now I don't need you so good bye.", outcome: "Continue",  nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE3Scene3: [Dialog] = [
        Dialog(id: 0, text: "As you read the words penned by Mbok Srini, you were confronted with a jumble of emotions.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Anger, confusion, and sorrow battled within you, intertwining their tendrils and weaving a complex tapestry of pain.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "Tears welled up in your eyes as the pain in your heart intensified.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "(…What is happening?)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
        Dialog(id: 5, text: "The consciousness of Timun, overwhelmed by a storm of rage and betrayal, surged within you, demanding to be acknowledged and expressed.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The realization that you had been deceived, that the bond you had cherished with Mbok Srini was built on a foundation of falsehood, pierced through your soul.", outcome: "Continue", nextDialogIDs: [7,8], character: .narrator),
        Dialog(id: 7, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 8, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she discards me in such heartless manner?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "As the evil laughter of Buto Ijo pierced through the air, your attention snapped back to the present moment.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The puzzle pieces began to align, and the truth behind Buto Ijo’s sinister smile and your foster mother's lingering sadness.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "The realization hit you like a wave, and your dual consciousness shifted.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "As the consciousness of Timun Mas, the daughter of Mbok Srini, took over, a wave of determination and concern washed over you.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "Without a moment's hesitation, your body moved on its own accord, drawn towards the sound of Buto Ijo's laughter.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Your steps quickened, driven by both worry for Mbok Srini's safety and a burning desire to confront her about the truth revealed in the letter.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE3Scene4: [Dialog] = [
        Dialog(id: 0, text: "You set foot on the lush field, where memories of cultivating trees and cucumbers with your foster mother resurfaced.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "\"Sacrificing… Yourself… Protecting… Child… For… Eight… Years… Funny.\"", outcome: "Continue", nextDialogIDs: [2], character: .giant),
        Dialog(id: 2, text: "As Timun Mas' consciousness braced itself to confront the colossal giant, the weight of your dual existence as both a Storyweaver and a protagonist bore down upon you. The rules of your role echoed in your mind, urging restraint, forbidding direct intervention in the narrative's evolution.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "But the pain of Mbok Srini's betrayal clawed at your soul, threatening to consume the flickering flame of trust that had remained. The truth, whispered in the shadows of Buto Ijo's laughter, seeped into your consciousness like poison.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"Said… Child… As… Regret...\"", outcome: "Continue", nextDialogIDs: [5], character: .giant),
        Dialog(id: 5, text: "Your steps faltered, a tempest of conflicting emotions raging within you.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The ground beneath you seemed to tremble, mirroring the tumultuous storm brewing within your heart.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "\"But… Said… Child… Best… Gift… Funny!\"", outcome: "Continue", nextDialogIDs: [8], character: .giant),
        Dialog(id: 8, text: "The betrayal you had felt was tempered by the realization that Mbok Srini had come to love and cherish you as her own daughter, despite the circumstances of your arrival.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "Your consciousness as Timun Mas wavered, torn between the hurt caused by the revelation and the undeniable bond that had formed between you and Mbok Srini.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The weight of her words settled upon you, their impact seeping into your heart. ", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "It was a moment of vulnerability, of recognizing the depth of emotions that had entangled your lives.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "\"Failure… Of… A… MOTHER!\"", outcome: "Continue", nextDialogIDs: [13], character: .giant),
        Dialog(id: 13, text: "Buto Ijo's spiteful words reverberated through the air, igniting a fierce blaze of anger within you.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "The spark of indignation surged through your veins, fueling your determination to confront the twisted giant.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "As a Storyweaver, you understood the delicate balance between maintaining the integrity of the narrative and embracing your role as Timun Mas, the embodiment of emotions and agency within the story.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "You were faced with a choice…", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "To remain detached as the Storyweaver or to embrace your role as Timun Mas, to confront the emotions that swelled within you and seek resolution.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "(…So, what should we become?)", outcome: "Continue", nextDialogIDs: [19, 20], character: .narrator),
        Dialog(id: 19, text: "In a moment of agonizing decision, you embraced your role as the Storyweaver, tethered to the rule of non-intervention, despite the raging tempest of fury that threatened to consume you. ", outcome: "The Storyweaver", nextDialogIDs: [28], character: .narrator), // SUB ENDING 2-1
        Dialog(id: 20, text: "\"She is not a failure, Buto Ijo!\"", outcome: "Timun Mas", nextDialogIDs: [21], character: .timunMas),
        Dialog(id: 21, text: "You said harshly, your voice filled with rage.", outcome: "Continue", nextDialogIDs: [22], character: .timunMas),
        Dialog(id: 22, text: "\"We all make mistakes, but your mistake deserved is irredeemable. You may have started as a character in a tale, but through the agony and hatred you have given me, you became a vile creature to be removed in every sense of the word.\"", outcome: "Continue", nextDialogIDs: [23], character: .timunMas),
        Dialog(id: 23, text: "\"Cucumber… Child… Can’t… Defeat… Buto Ijo!\"", outcome: "Continue", nextDialogIDs: [24], character: .giant),
        Dialog(id: 24, text: "As Buto Ijo's taunts echoed through the air, you felt a surge of determination and resilience coursing through your veins.", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "You were no longer just a bystander in this story; you had become an active character, ready to protect and fight for those you cherished.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "In that moment, your mind brimmed with the possibilities that the narrative could unfold.", outcome: "Continue", nextDialogIDs: [27], character: .narrator),
        Dialog(id: 27, text: "As a Storyweaver, you delighted in the unexpected twists and turns, and you reveled in the power of the story to shape the outcome.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
        // SUB ENDING 3-1 (sama kaya 2-1)
        
        Dialog(id: 28, text: "With unwavering resolve, you mustered every ounce of authority as the weaver of tales, severing the connection and forcibly detaching your consciousness from the character you had inhabited.", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "It was a harrowing choice, tearing yourself away from the vessel that had held your essence, leaving him to face his own destiny, grappling with the heart-wrenching loss of their beloved mother.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "Retreating to the sanctity of your abode, the domain of endless tales, you collapsed onto the hallowed ground, your body trembling with exhaustion and the weight of immeasurable grief.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "The encounter with the vile creature had left an indelible mark upon your consciousness, its echoes reverberating through the very fabric of your being.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        // START CUTSCENE
        
        Dialog(id: 32, text: "(…)", outcome: "Continue", nextDialogIDs: [33], character: .storyweaver),
        Dialog(id: 33, text: "Helplessness washed over you, as you pondered the fate of the character who had regarded you as their cherished child.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "You were grateful for the love they bestowed upon you despite your immense power.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "Yet, amidst the depths of sorrow that threatened to engulf you, a spark of unwavering determination ignited within your eyes.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        Dialog(id: 36, text: "Though wearied and battered, you yearned for the allure of another tale…", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "Another folklore that would kindle the flames of your spirit and breathe life into your weary soul.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        // END CUTSCENE
    ]
    
    static let DialogTreeSE3Scene4a: [Dialog] = [
        Dialog(id: 0, text: "Your consciousness as Timun Mas melded with the creative essence of the storyweaver, weaving a plan that transcended the bounds of conventional warfare.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Harnessing the full might of your authority as a Storyweaver, you stretched forth your hand with fingers trembling with raw power.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "With a resolute gesture, you delved into the depths of your pocket, weaving an intricate web of magic that defied the boundaries of reality itself.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"Hahaha…\"", outcome: "Continue", nextDialogIDs: [4], character: .giant),
        Dialog(id: 4, text: "Buto Ijo's laughter echoed through the field, his confidence seemingly unshaken by the small object you held in your hand.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "You raised an eyebrow, maintaining your smirk as you met Buto Ijo's gaze.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The air around you crackled with a sense of anticipation, as if the very fabric of the narrative was aligning itself with your words.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        
        // CUTSCENE
        
        Dialog(id: 7, text: "\"You see, Buto Ijo, defeating you won't be as straightforward as you think.\"", outcome: "Continue", nextDialogIDs: [8], character: .timunMas),
        Dialog(id: 8, text: "you declared, your voice carrying an air of intrigue.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "\"For within the realm of storytelling, the most unexpected things hold immense power.\"", outcome: "Continue", nextDialogIDs: [10], character: .timunMas),
        Dialog(id: 10, text: "\"Livingstock.. Talk… Too… MUCH!\"", outcome: "Continue", nextDialogIDs: [11], character: .giant),
        Dialog(id: 11, text: "As Buto Ijo charged forward, his eyes filled with determination, you remained calm and focused.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "With deliberate movements, you unfolded the small object in your hand and spread them on your path, revealing a set of seeds that glimmered with an otherworldly aura.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        
        //END CUTSCENE
        
        //MINIGAME SWIPE ZIG ZAG CABANG
        
        Dialog(id: 13, text: "Memories of your initial encounter with Mbok Srini flooded your mind, reminding you of the time when you were trapped within a cucumber and she came to your rescue.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Drawing upon that connection and the power of storytelling, you scattered the cucumber seeds along the ground before you.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "In a matter of seconds, an incredible transformation began to unfold. Sprouts emerged from the earth, growing rapidly and reaching towards the sky.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "To Buto Ijo's astonishment, the sprouts swiftly grew into luscious cucumber plants, their vines intertwining and spreading across the field.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "Within moments, a dense network of cucumber-filled foliage had formed, creating a natural barrier that hindered Buto Ijo's movement.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "\"Hard… Move… Annoying!\"", outcome: "Continue", nextDialogIDs: [19], character: .giant),
        Dialog(id: 19, text: "With a surge of strength, he managed to tear himself away from the entanglement, leaving behind remnants of broken vines.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        
        //MINIGAME SWIPE BATANG
        
        Dialog(id: 20, text: "Undeterred by his escape, you remained composed and drawing upon the memories of your exploration with Mbok Srini in the bamboo forest.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "You unfolded another small object in your hand and scattered the object on the path before you.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "In that instant, dozens of needles transformed into towering bamboo shoots, their long and sharp forms reaching towards the sky.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "Buto Ijo, now confronted with the unexpected obstacle, found himself surrounded by the towering bamboo. ", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "The dense grove of bamboo restricted his movement, preventing him from advancing further towards you.", outcome: "Timun Mas", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The sharpness of the bamboo shoots posed a threat, causing him to tread with caution to avoid being impaled.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "\"Hurts… In… The… WAY!\"", outcome: "Continue", nextDialogIDs: [27], character: .giant),
        Dialog(id: 27, text: "As Buto Ijo broke free from the entanglement of the bamboo, his movements slowed, and he winced in pain from the sharp bamboo shoots that had grazed him.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        
        //MINIGAME HORIZONTAL SWIPE LAUT
        
        Dialog(id: 28, text: "Remembering the cherished memories of cooking with Mbok Srini, you unfolded another small object and tossed it onto the ground. ", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "The scattered salts transformed into a vast expanse of water, stretching out before you like a boundless sea.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "With each step he took, the water rose higher, reaching his ankles, then his knees, and soon it reached his waist.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "Buto Ijo's movements became labored as he struggled against the force of the water, its currents pulling at him with relentless strength.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "The deep sea before him posed a new challenge, threatening to engulf and submerge him if he dared to advance.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "But once again, he managed to escape by swimming on the sea. As Buto Ijo neared, fueled by his determination to defeat you, a surge of anger coursed through your veins.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "The recent tragedy that had befallen your beloved mother replayed in your mind, igniting a fiery rage within you.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "The boundary between the Storyweaver and Timun Mas blurred as both consciousnesses merged into a singular force.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        
        //MINIGAME SWIPE MIRING
        
        Dialog(id: 36, text: "With a swift motion, you unfolded another small object, revealing a cluster of shrimp paste. Channeling your emotions into the act, you cast the shrimp paste onto the ground. ", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "In a dramatic transformation, the paste melted and melded with the surrounding terrain, creating a scorching sea of boiling mud.", outcome: "Continue", nextDialogIDs: [38], character: .narrator),
        Dialog(id: 38, text: "The hot sea of mud materialized instantly, its intense heat radiating and filling the air. Buto Ijo, caught off guard by the sudden change, found himself sinking into the murky depths of the mud.", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
        Dialog(id: 39, text: "The searing heat made each movement a struggle, as he faought against the unbearable temperatures.", outcome: "Timun Mas", nextDialogIDs: [40], character: .narrator),
        Dialog(id: 40, text: "With each passing moment, his strength waned, and despair flickered in his eyes. The once-mighty giant, now reduced to a fearful and defeated creature, gazed up at you with wide eyes filled with terror and confusion.", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
        Dialog(id: 41, text: "\"Who… Are… You?\"", outcome: "Continue", nextDialogIDs: [42], character: .giant),
        Dialog(id: 42, text: "\"I am the Storyweaver.\"", outcome: "Continue", nextDialogIDs: [43], character: .timunMas),
        Dialog(id: 43, text: "You responded, your voice steady and filled with a newfound sense of purpose. ", outcome: "Continue", nextDialogIDs: [44], character: .narrator),
        Dialog(id: 44, text: "\"But for now, I am Timun Mas.\"", outcome: "Continue", nextDialogIDs: [45], character: .timunMas),
        Dialog(id: 45, text: "The words carried the weight of your dual existence as both the weaver of tales and the character immersed in the story.", outcome: "Continue", nextDialogIDs: [46], character: .narrator),
        Dialog(id: 46, text: "You stood there, witnessing the lifeless giant being consumed by the engulfing flames and mud.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE3Scene5: [Dialog] = [
        
        //CUTSCENE START
        Dialog(id: 0, text: "\"Thank you, Mbok Srini.\"", outcome: "Continue", nextDialogIDs: [1], character: .timunMas),
        Dialog(id: 1, text: "A mix of emotions washed over you—a blend of gratitude, love, and regret. ", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "You couldn't help but offer a tender smile, despite the sourness that tinged it.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"You will always be the greatest gift in our life.\"", outcome: "Continue", nextDialogIDs: [4], character: .timunMas),
        Dialog(id: 4, text: "You whispered, the words carrying the depth of your love, gratitude, and... regret.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "And so, with a final breath laden with both stress and acceptance, you surrendered to the embrace of the story's end, aware that the narrative of Timun Mas would persisted, moving forward without the intervention of a Storyweaver.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        
        //END CUTSCENE
        
        Dialog(id: 6, text: "The chapter of Timun Mas had come to an end for you, O’ Storyweaver.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeScene9: [Dialog] = [
        Dialog(id: 0, text: "You walked deeper into the forest with gaze fixated on the mesmerizing surroundings. The air was thick with the fragrance of blooming flowers and the sound of cascading water grew louder as you approached.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "The sight was nothing short of magical. The cascading water glistened under the sunlight, creating a shimmering curtain that fell gracefully into a crystal-clear pool below. ", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "Birds chirped melodiously, their songs harmonizing with the gentle rustling of leaves. Squirrels scurried playfully along the branches, while delicate butterflies danced on the fragrant breeze.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "(This is a wonder within the mortal realm…)", outcome: "Continue", nextDialogIDs: [4], character: .storyweaver),
        Dialog(id: 4, text: "While your foster mother believed that you required rest from the physical toil, little did she know that your intention for venturing into the woods.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "For you, it was a journey to delve into the realms of folklore, to wander among the mystical tales and legendary creatures that whispered in the depths of the forest.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "(Fascinating…) ", outcome: "Continue", nextDialogIDs: [7], character: .storyweaver),
        Dialog(id: 7, text: "Your all-seeing eyes absorbed the essence of each story and storing it in the depths of your being, ready to be woven into the tapestry of your own narratives.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "From the humble villages scattered across the continent to the majestic mountains that reached the heights of the sky, your gaze encompassed all, fascinated by the wonders and tales that unfolded before you.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "Yet, amidst the vast array of stories, there was a particular being that piqued your curiosity.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "(How is Buto Ijo faring?)", outcome: "Continue", nextDialogIDs: [11], character: .storyweaver),
        Dialog(id: 11, text: "You wondered aloud.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        
        // PUZZLE
        
        Dialog(id: 12, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "To read their minds would be akin to spoiling the very essence of their stories, a cursed enemy of every story enthusiast.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        
        // PUZZLE
        
        Dialog(id: 15, text: "With a deep breath, you averted your attention from Buto Ijo and shifted your gaze towards Mbok Srini, who seemed burdened by worries and sadness.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "(So the day has finally come…)", outcome: "Continue", nextDialogIDs: [17], character: .storyweaver),
        Dialog(id: 17, text: "You couldn't help but to realize that the approaching battle with Buto Ijo and the concerns that weighed on your foster mother’s heart as the sole reason for the change in their demeanor.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "The gravity of the situation was not lost on you, as the impending confrontation held the potential to shape the course of the narrative.", outcome: "Continue", nextDialogIDs: [19], character: .narrator),
        Dialog(id: 19, text: "As you pondered the scenario ahead, a flicker of curiosity arose within you, tempting you to use your abilities as a Storyweaver to gain an advantage.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        Dialog(id: 20, text: "The thought of reading Buto Ijo's mind and uncovering his strategies was enticing, but you quickly reminded yourself of the principle you had set for yourself.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "(Maintain the integrity of the narratives — resist the temptation to delve into the minds of characters.)", outcome: "Continue", nextDialogIDs: [22], character: .storyweaver),
        Dialog(id: 22, text: "Instead of relying on preemptive knowledge, you chose to embrace the uncertainty and face Buto Ijo on equal footing.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "You reaffirmed your decision to wait for Buto Ijo's arrival, allowing the narrative to unfold naturally.", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "...", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The hours stretched on without any sign of Buto Ijo’s arrival.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "The juxtaposition of Buto Ijo's newfound happiness and Mbok Srini's sorrow deepened the mystery and filled you with a sense of unease.", outcome: "Continue", nextDialogIDs: [27, 28], character: .narrator),
        Dialog(id: 27, text: "Reluctant to disrupt the delicate balance of the unfolding story, you chose to wait longer, hoping that your battle with Buto Ijo would deviate slightly from the original storylore.", outcome: "Wait longer… ", nextDialogIDs: [29], character: .narrator), // SUB ENDING 4 start
        Dialog(id: 28, text: "With a heavy heart, you decided it was time to return home. The uneasiness that gnawed at your consciousness as Timun Mas was a clear indication that something was amiss.", outcome: "Go home...", nextDialogIDs: [], character: .narrator),
        
        // SUB ENDING 4
        
        Dialog(id: 29, text: "Resisting the temptation to use your all-seeing eyes to peer into the future, you understood the grave consequences it would bring.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "Unveiling the secrets that lay ahead would rob the narrative of its inherent surprise and suspense, leaving the story devoid of its enigmatic allure.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "Instead, you found solace beneath the sheltering embrace of a tree near the cascading waterfall. ", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "The soothing sound of rushing water mingled with the rustling of leaves, creating a symphony of nature's melodies that resonated deep within your soul.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "The soothing sound of rushing water mingled with the haunting rustling of leaves.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "It was in this ethereal sanctuary that time lost its grip, slipping away like sand through your fingers, as you delved deeper into the labyrinth of your own imagination.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "Lost in the labyrinth of your own imagination, you let the hours slip away like sand through your fingers.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        
        // SUB ENDING 4 scene 1 end
    ]
    
    static let DialogTreeSE4Scene1a: [Dialog] = [
        Dialog(id: 0, text: "As the sun painted the sky with its golden hues, casting a mesmerizing glow across the forest, a pang of concern tugged at your heart.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Your mother's worry weighed on your mind, a reminder of the tangible world beyond the realm of tales.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "The unease that gnawed at your consciousness as Timun Mas grew more palpable, signaling that something was amiss, and your duty as a devoted daughter urged you to return home.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "With a heavy heart, you decided it was time to return home.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "The uneasiness that gnawed at your consciousness as Timun Mas was a clear indication that something was amiss.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
    ]
    
    static let DialogTreeSE4Scene1b: [Dialog] = [
        Dialog(id: 0, text: "Questions swirled in your mind as you walked.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "(What had caused this shift in the narrative?)", outcome: "Continue", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 2, text: "The anticipation of the upcoming story as a Storyweaver fueled your creative spirit, eager to weave a tale of adventure, triumph, and the ultimate confrontation with Buto Ijo.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "(But… why were Buto Ijo and Mbok Srini displaying such contrasting emotions?)", outcome: "Continue", nextDialogIDs: [4], character: .storyweaver),
        Dialog(id: 4, text: "As Timun Mas, the restless hero within the story, you couldn't help but feel a sense of urgency and unease.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "The overlapping consciousness of the Storyweaver and Timun Mas creating a swirling mix of excitement and restlessness within you.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The threads of destiny entangled, and the choices you would make would shape not only your own story but also the lives of those you held dear. What awaited you was something beyond your wildest imagination, a revelation that would challenge your identity as Timun Mas and the Storyweaver.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
    ]
    
    static let DialogTreeSE4Scene2: [Dialog] = [
        Dialog(id: 0, text: "You stepped through the threshold of your house", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "The silence enveloped the house, stretching into an oppressive blanket that mirrored the turmoil within you.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "The weight of the silence pressed upon your shoulders, filling the air with an almost tangible presence.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "You moved through each room, carefully inspecting the familiar objects and cherished memories that adorned the walls.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "It was a drawing, carefully preserved and framed, depicting your mother embracing you when you were just a toddler.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The memory it evoked tugged at your heart, reminding you of the time when you, as Timun Mas, first ventured into this realm.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "It was a treasure that held immense sentimental value, a symbol of the bond you shared with Mbok Srini.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "But as your gaze shifted, you noticed the torn paper lying beside the cherished drawing, its jagged edges a stark contrast to the gentle embrace depicted in the artwork.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "Curiosity mingled with trepidation as you gingerly picked up the pieces, a sense of foreboding creeping into your thoughts.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        
        
        // PUZZLE
        
        Dialog(id: 10, text: "With painstaking care, you attempted to fit the fragments together like a puzzle, hoping to uncover the message hidden within. As each piece found its place, the words began to form, etching themselves onto the torn canvas of your perception.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "\"I am leaving the house. I have always lied to myself that I am happy whenever you are with me - But in truth, I was never happy. You are just a replacement that I brought home out of whim because I just lost my son. Now I don't need you so good bye.\"", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE4Scene3: [Dialog] = [
        Dialog(id: 0, text: "As you read the words penned by Mbok Srini, you were confronted with a jumble of emotions.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Anger, confusion, and sorrow battled within you, intertwining their tendrils and weaving a complex tapestry of pain.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "Tears welled up in your eyes as the pain in your heart intensified.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "(…What is happening?)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
        Dialog(id: 5, text: "The consciousness of Timun, overwhelmed by a storm of rage and betrayal, surged within you, demanding to be acknowledged and expressed.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The realization that you had been deceived, that the bond you had cherished with Mbok Srini was built on a foundation of falsehood, pierced through your soul.", outcome: "Continue", nextDialogIDs: [7,8], character: .narrator),
        Dialog(id: 7, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 8, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she discards me in such heartless manner?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "As the evil laughter of Buto Ijo pierced through the air, your attention snapped back to the present moment.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The puzzle pieces began to align, and the truth behind Buto Ijo’s sinister smile and your foster mother's lingering sadness.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "The realization hit you like a wave, and your dual consciousness shifted.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "As the consciousness of Timun Mas, the daughter of Mbok Srini, took over, a wave of determination and concern washed over you.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "Without a moment's hesitation, your body moved on its own accord, drawn towards the sound of Buto Ijo's laughter.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Your steps quickened, driven by both worry for Mbok Srini's safety and a burning desire to confront her about the truth revealed in the letter.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE4Scene4: [Dialog] = [
        Dialog(id: 0, text: "You set foot on the lush field, where memories of cultivating trees and cucumbers with your foster mother resurfaced.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "\"Sacrificing… Yourself… Protecting… Child… For… Eight… Years… Funny.\"", outcome: "Continue", nextDialogIDs: [2], character: .giant),
        Dialog(id: 2, text: "As Timun Mas' consciousness braced itself to confront the colossal giant, the weight of your dual existence as both a Storyweaver and a protagonist bore down upon you. The rules of your role echoed in your mind, urging restraint, forbidding direct intervention in the narrative's evolution.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "But the pain of Mbok Srini's betrayal clawed at your soul, threatening to consume the flickering flame of trust that had remained. The truth, whispered in the shadows of Buto Ijo's laughter, seeped into your consciousness like poison.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"Said… Child… As… Regret...\"", outcome: "Continue", nextDialogIDs: [5], character: .giant),
        Dialog(id: 5, text: "Your steps faltered, a tempest of conflicting emotions raging within you.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The ground beneath you seemed to tremble, mirroring the tumultuous storm brewing within your heart.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "\"But… Said… Child… Best… Gift… Funny!\"", outcome: "Continue", nextDialogIDs: [8], character: .giant),
        Dialog(id: 8, text: "The betrayal you had felt was tempered by the realization that Mbok Srini had come to love and cherish you as her own daughter, despite the circumstances of your arrival.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "Your consciousness as Timun Mas wavered, torn between the hurt caused by the revelation and the undeniable bond that had formed between you and Mbok Srini.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The weight of her words settled upon you, their impact seeping into your heart. ", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "It was a moment of vulnerability, of recognizing the depth of emotions that had entangled your lives.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "\"Failure… Of… A… MOTHER!\"", outcome: "Continue", nextDialogIDs: [13], character: .giant),
        Dialog(id: 13, text: "Buto Ijo's spiteful words reverberated through the air, igniting a fierce blaze of anger within you.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "The spark of indignation surged through your veins, fueling your determination to confront the twisted giant.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "As a Storyweaver, you understood the delicate balance between maintaining the integrity of the narrative and embracing your role as Timun Mas, the embodiment of emotions and agency within the story.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "You were faced with a choice…", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "To remain detached as the Storyweaver or to embrace your role as Timun Mas, to confront the emotions that swelled within you and seek resolution.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "(…So, what should we become?)", outcome: "Continue", nextDialogIDs: [19, 20], character: .narrator),
        Dialog(id: 19, text: "In a moment of agonizing decision, you embraced your role as the Storyweaver, tethered to the rule of non-intervention, despite the raging tempest of fury that threatened to consume you. ", outcome: "The Storyweaver", nextDialogIDs: [28], character: .narrator), // SUB ENDING 2-1
        Dialog(id: 20, text: "\"She is not a failure, Buto Ijo!\"", outcome: "Timun Mas", nextDialogIDs: [21], character: .timunMas),
        Dialog(id: 21, text: "You said harshly, your voice filled with rage.", outcome: "Continue", nextDialogIDs: [22], character: .timunMas),
        Dialog(id: 22, text: "\"We all make mistakes, but your mistake deserved is irredeemable. You may have started as a character in a tale, but through the agony and hatred you have given me, you became a vile creature to be removed in every sense of the word.\"", outcome: "Continue", nextDialogIDs: [23], character: .timunMas),
        Dialog(id: 23, text: "\"Cucumber… Child… Can’t… Defeat… Buto Ijo!\"", outcome: "Continue", nextDialogIDs: [24], character: .giant),
        Dialog(id: 24, text: "As Buto Ijo's taunts echoed through the air, you felt a surge of determination and resilience coursing through your veins.", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "You were no longer just a bystander in this story; you had become an active character, ready to protect and fight for those you cherished.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "In that moment, your mind brimmed with the possibilities that the narrative could unfold.", outcome: "Continue", nextDialogIDs: [27], character: .narrator),
        Dialog(id: 27, text: "As a Storyweaver, you delighted in the unexpected twists and turns, and you reveled in the power of the story to shape the outcome.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
        // SUB ENDING 2-1
        
        Dialog(id: 28, text: "With unwavering resolve, you mustered every ounce of authority as the weaver of tales, severing the connection and forcibly detaching your consciousness from the character you had inhabited.", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "It was a harrowing choice, tearing yourself away from the vessel that had held your essence, leaving him to face his own destiny, grappling with the heart-wrenching loss of their beloved mother.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "Retreating to the sanctity of your abode, the domain of endless tales, you collapsed onto the hallowed ground, your body trembling with exhaustion and the weight of immeasurable grief.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "The encounter with the vile creature had left an indelible mark upon your consciousness, its echoes reverberating through the very fabric of your being.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        // START CUTSCENE
        
        Dialog(id: 32, text: "(…)", outcome: "Continue", nextDialogIDs: [33], character: .storyweaver),
        Dialog(id: 33, text: "Helplessness washed over you, as you pondered the fate of the character who had regarded you as their cherished child.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "You were grateful for the love they bestowed upon you despite your immense power.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "Yet, amidst the depths of sorrow that threatened to engulf you, a spark of unwavering determination ignited within your eyes.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        Dialog(id: 36, text: "Though wearied and battered, you yearned for the allure of another tale…", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "Another folklore that would kindle the flames of your spirit and breathe life into your weary soul.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        // END CUTSCENE
    ]
    
    static let DialogTreeSE4Scene4a: [Dialog] = [
        Dialog(id: 0, text: "Your consciousness as Timun Mas melded with the creative essence of the storyweaver, weaving a plan that transcended the bounds of conventional warfare.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Harnessing the full might of your authority as a Storyweaver, you stretched forth your hand with fingers trembling with raw power.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "With a resolute gesture, you delved into the depths of your pocket, weaving an intricate web of magic that defied the boundaries of reality itself.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"Hahaha…\"", outcome: "Continue", nextDialogIDs: [4], character: .giant),
        Dialog(id: 4, text: "Buto Ijo's laughter echoed through the field, his confidence seemingly unshaken by the small object you held in your hand.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "You raised an eyebrow, maintaining your smirk as you met Buto Ijo's gaze.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The air around you crackled with a sense of anticipation, as if the very fabric of the narrative was aligning itself with your words.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        
        // CUTSCENE
        
        Dialog(id: 7, text: "\"You see, Buto Ijo, defeating you won't be as straightforward as you think.\"", outcome: "Continue", nextDialogIDs: [8], character: .timunMas),
        Dialog(id: 8, text: "you declared, your voice carrying an air of intrigue.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "\"For within the realm of storytelling, the most unexpected things hold immense power.\"", outcome: "Continue", nextDialogIDs: [10], character: .timunMas),
        Dialog(id: 10, text: "\"Livingstock.. Talk… Too… MUCH!\"", outcome: "Continue", nextDialogIDs: [11], character: .giant),
        Dialog(id: 11, text: "As Buto Ijo charged forward, his eyes filled with determination, you remained calm and focused.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "With deliberate movements, you unfolded the small object in your hand and spread them on your path, revealing a set of seeds that glimmered with an otherworldly aura.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        
        //END CUTSCENE
        
        //MINIGAME SWIPE ZIG ZAG CABANG
        
        Dialog(id: 13, text: "Memories of your initial encounter with Mbok Srini flooded your mind, reminding you of the time when you were trapped within a cucumber and she came to your rescue.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Drawing upon that connection and the power of storytelling, you scattered the cucumber seeds along the ground before you.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "In a matter of seconds, an incredible transformation began to unfold. Sprouts emerged from the earth, growing rapidly and reaching towards the sky.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "To Buto Ijo's astonishment, the sprouts swiftly grew into luscious cucumber plants, their vines intertwining and spreading across the field.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "Within moments, a dense network of cucumber-filled foliage had formed, creating a natural barrier that hindered Buto Ijo's movement.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "\"Hard… Move… Annoying!\"", outcome: "Continue", nextDialogIDs: [19], character: .giant),
        Dialog(id: 19, text: "With a surge of strength, he managed to tear himself away from the entanglement, leaving behind remnants of broken vines.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        
        //MINIGAME SWIPE BATANG
        
        Dialog(id: 20, text: "Undeterred by his escape, you remained composed and drawing upon the memories of your exploration with Mbok Srini in the bamboo forest.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "You unfolded another small object in your hand and scattered the object on the path before you.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "In that instant, dozens of needles transformed into towering bamboo shoots, their long and sharp forms reaching towards the sky.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "Buto Ijo, now confronted with the unexpected obstacle, found himself surrounded by the towering bamboo. ", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "The dense grove of bamboo restricted his movement, preventing him from advancing further towards you.", outcome: "Timun Mas", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The sharpness of the bamboo shoots posed a threat, causing him to tread with caution to avoid being impaled.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "\"Hurts… In… The… WAY!\"", outcome: "Continue", nextDialogIDs: [27], character: .giant),
        Dialog(id: 27, text: "As Buto Ijo broke free from the entanglement of the bamboo, his movements slowed, and he winced in pain from the sharp bamboo shoots that had grazed him.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        
        //MINIGAME HORIZONTAL SWIPE LAUT
        
        Dialog(id: 28, text: "Remembering the cherished memories of cooking with Mbok Srini, you unfolded another small object and tossed it onto the ground. ", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "The scattered salts transformed into a vast expanse of water, stretching out before you like a boundless sea.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "With each step he took, the water rose higher, reaching his ankles, then his knees, and soon it reached his waist.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "Buto Ijo's movements became labored as he struggled against the force of the water, its currents pulling at him with relentless strength.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "The deep sea before him posed a new challenge, threatening to engulf and submerge him if he dared to advance.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "But once again, he managed to escape by swimming on the sea. As Buto Ijo neared, fueled by his determination to defeat you, a surge of anger coursed through your veins.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "The recent tragedy that had befallen your beloved mother replayed in your mind, igniting a fiery rage within you.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "The boundary between the Storyweaver and Timun Mas blurred as both consciousnesses merged into a singular force.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        
        //MINIGAME SWIPE MIRING
        
        Dialog(id: 36, text: "With a swift motion, you unfolded another small object, revealing a cluster of shrimp paste. Channeling your emotions into the act, you cast the shrimp paste onto the ground. ", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "In a dramatic transformation, the paste melted and melded with the surrounding terrain, creating a scorching sea of boiling mud.", outcome: "Continue", nextDialogIDs: [38], character: .narrator),
        Dialog(id: 38, text: "The hot sea of mud materialized instantly, its intense heat radiating and filling the air. Buto Ijo, caught off guard by the sudden change, found himself sinking into the murky depths of the mud.", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
        Dialog(id: 39, text: "The searing heat made each movement a struggle, as he fought against the unbearable temperatures.", outcome: "Timun Mas", nextDialogIDs: [40], character: .narrator),
        Dialog(id: 40, text: "With each passing moment, his strength waned, and despair flickered in his eyes. The once-mighty giant, now reduced to a fearful and defeated creature, gazed up at you with wide eyes filled with terror and confusion.", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
        Dialog(id: 41, text: "\"Who… Are… You?\"", outcome: "Continue", nextDialogIDs: [42], character: .giant),
        Dialog(id: 42, text: "\"I am the Storyweaver.\"", outcome: "Continue", nextDialogIDs: [43], character: .timunMas, emotion: .angry),
        Dialog(id: 43, text: "You responded, your voice steady and filled with a newfound sense of purpose. ", outcome: "Continue", nextDialogIDs: [44], character: .narrator),
        Dialog(id: 44, text: "\"But for now, I am Timun Mas.\"", outcome: "Continue", nextDialogIDs: [45], character: .timunMas, emotion: .angry),
        Dialog(id: 45, text: "The words carried the weight of your dual existence as both the weaver of tales and the character immersed in the story.", outcome: "Continue", nextDialogIDs: [46], character: .narrator),
        Dialog(id: 46, text: "You stood there, witnessing the lifeless giant being consumed by the engulfing flames and mud.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeSE4Scene5: [Dialog] = [
        
        //CUTSCENE START
        Dialog(id: 0, text: "\"Thank you, Mbok Srini.\"", outcome: "Continue", nextDialogIDs: [1], character: .timunMas, emotion: .crying),
        Dialog(id: 1, text: "A mix of emotions washed over you—a blend of gratitude, love, and regret. ", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "You couldn't help but offer a tender smile, despite the sourness that tinged it.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"You will always be the greatest gift in our life.\"", outcome: "Continue", nextDialogIDs: [4], character: .timunMas, emotion: .happy),
        Dialog(id: 4, text: "You whispered, the words carrying the depth of your love, gratitude, and... regret.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "And so, with a final breath laden with both stress and acceptance, you surrendered to the embrace of the story's end, aware that the narrative of Timun Mas would persisted, moving forward without the intervention of a Storyweaver.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        
        //END CUTSCENE
        
        Dialog(id: 6, text: "The chapter of Timun Mas had come to an end for you, O’ Storyweaver.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeScene9a: [Dialog] = [
        Dialog(id: 0, text: "Questions swirled in your mind as you walked.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "(What had caused this shift in the narrative?)", outcome: "Continue", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 2, text: "The anticipation of the upcoming story as a Storyweaver fueled your creative spirit, eager to weave a tale of adventure, triumph, and the ultimate confrontation with Buto Ijo.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "(But… why were Buto Ijo and Mbok Srini displaying such contrasting emotions?)", outcome: "Continue", nextDialogIDs: [4], character: .storyweaver),
        Dialog(id: 4, text: "As Timun Mas, the restless hero within the story, you couldn't help but feel a sense of urgency and unease.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "The overlapping consciousness of the Storyweaver and Timun Mas creating a swirling mix of excitement and restlessness within you.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The threads of destiny entangled, and the choices you would make would shape not only your own story but also the lives of those you held dear. What awaited you was something beyond your wildest imagination, a revelation that would challenge your identity as Timun Mas and the Storyweaver.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
    ]
    
    static let DialogTreeScene10: [Dialog] = [
        Dialog(id: 0, text: "As you reached your abode, the absence of your foster mother — Mbok Srini, struck you with surprise and concern.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "(…Where is she?)", outcome: "Continue", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 2, text: "You stood there for a moment, scanning your surroundings, hoping to catch a glimpse of her.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "The yard was quiet, devoid of the usual warmth and liveliness she brought.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "Her absence was unusual, especially considering her habit of eagerly awaiting your return on the yard.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "The unease within you deepened as you contemplated the possibilities.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "(Had something happened to her?)", outcome: "Continue", nextDialogIDs: [7], character: .storyweaver),
        Dialog(id: 7, text: "The clash between your consciousness as Timun Mas and the Storyweaver intensified, fueling your anxiety and curiosity.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "You took a step forward and entered the house in search of any clues.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
    ]
    
    
    static let DialogTreeScene11: [Dialog] = [
        Dialog(id: 0, text: "The air inside felt heavy with silence, echoing your own internal turmoil. ", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Every corner of the house seemed to hold a secret, urging you to uncover the truth.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "You moved through each room, carefully inspecting the familiar objects and cherished memories that adorned the walls.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "It was a drawing, carefully preserved and framed, depicting your mother embracing you when you were just a toddler.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "The memory it evoked tugged at your heart, reminding you of the time when you, as Timun Mas, first ventured into this realm.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "It was a treasure that held immense sentimental value, a symbol of the bond you shared with Mbok Srini.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "But as your gaze shifted, you noticed the torn paper lying beside the cherished drawing, its jagged edges a stark contrast to the gentle embrace depicted in the artwork.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "Curiosity mingled with trepidation as you gingerly picked up the pieces, a sense of foreboding creeping into your thoughts.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        
        
        // PUZZLE
        
        Dialog(id: 9, text: "With painstaking care, you attempted to fit the fragments together like a puzzle, hoping to uncover the message hidden within. As each piece found its place, the words began to form, etching themselves onto the torn canvas of your perception.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "\"I am leaving the house. I have always lied to myself that I am happy whenever you are with me - But in truth, I was never happy. You are just a replacement that I brought home out of whim because I just lost my son. Now I don't need you so good bye.\"", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    
    static let DialogTreeScene12: [Dialog] = [
        Dialog(id: 0, text: "As you read the words penned by Mbok Srini, you were confronted with a jumble of emotions.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Anger, confusion, and sorrow battled within you, intertwining their tendrils and weaving a complex tapestry of pain.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "Tears welled up in your eyes as the pain in your heart intensified.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Your eyes caught sight of a familiar item from afar.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "(…What is happening?)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
        Dialog(id: 5, text: "The consciousness of Timun, overwhelmed by a storm of rage and betrayal, surged within you, demanding to be acknowledged and expressed.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The realization that you had been deceived, that the bond you had cherished with Mbok Srini was built on a foundation of falsehood, pierced through your soul.", outcome: "Continue", nextDialogIDs: [7,8], character: .narrator),
        Dialog(id: 7, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 8, text: "The sense of betrayal mingled with the anguish, leaving you feeling lost and adrift.", outcome: "(How could she discards me in such heartless manner?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "As the evil laughter of Buto Ijo pierced through the air, your attention snapped back to the present moment.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "The puzzle pieces began to align, and the truth behind Buto Ijo’s sinister smile and your foster mother's lingering sadness.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "The realization hit you like a wave, and your dual consciousness shifted.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "As the consciousness of Timun Mas, the daughter of Mbok Srini, took over, a wave of determination and concern washed over you.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "Without a moment's hesitation, your body moved on its own accord, drawn towards the sound of Buto Ijo's laughter.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Your steps quickened, driven by both worry for Mbok Srini's safety and a burning desire to confront her about the truth revealed in the letter.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    
    static let DialogTreeScene13: [Dialog] = [
        Dialog(id: 0, text: "You set foot on the lush field, where memories of cultivating trees and cucumbers with your foster mother resurfaced.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "\"Sacrificing… Yourself… Protecting… Child… For… Eight… Years… Funny.\"", outcome: "Continue", nextDialogIDs: [2], character: .giant),
        Dialog(id: 2, text: "Buto Ijo taunted, marveling at Mbok Srini’s willingness to sacrifice herself to become a mother figure to a mere cucumber child for a span of eight years.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "Despite the provocation, your foster mother remained silent.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "As Timun Mas's consciousness prepared to confront the giant, you were reminded of your role as a Storyweaver and the rule prohibiting direct intervention in the unfolding story.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "Acknowledging the pain caused by Mbok Srini's betrayal, you compelled your consciousness as Timun Mas to remember the truth. Walking away, you overheard Mbok Srini's words.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "\"When she returns home, I am sure he will be greatly surprised.\"", outcome: "Continue", nextDialogIDs: [7], character: .mbokSrini, emotion: .scared),
        Dialog(id: 7, text: "Your steps halted.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "\"She might perceive me as a failed mother, perhaps even come to hate me.\"", outcome: "Continue", nextDialogIDs: [9], character: .mbokSrini, emotion: .scared),
        Dialog(id: 9, text: "She spoke directly to the giant, her eyes conveying both fear and determination.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        Dialog(id: 10, text: "\"At first, she was a replacement for those I had lost. However, after all these years together...\"", outcome: "Continue", nextDialogIDs: [11], character: .mbokSrini, emotion: .crying2),
        Dialog(id: 11, text: "Tears welled up in her eyes, yet she put on a brave facade and smiled.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "\"How could I not acknowledge her as my beloved daughter?\"", outcome: "Continue", nextDialogIDs: [13], character: .mbokSrini, emotion: .crying),
        Dialog(id: 13, text: "The words echoed in the air, carrying the weight of Mbok Srini's remorse and love.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "A mix of emotions surged within you, conflicting and intertwining as the truth unveiled itself.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "The betrayal you had felt was tempered by the realization that Mbok Srini had come to love and cherish you as her own daughter, despite the circumstances of your arrival.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "Your consciousness as Timun Mas wavered, torn between the hurt caused by the revelation and the undeniable bond that had formed between you and Mbok Srini.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "The weight of her words settled upon you, their impact seeping into your heart.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "It was a moment of vulnerability, of recognizing the depth of emotions that had entangled your lives.", outcome: "Continue", nextDialogIDs: [19], character: .narrator),
        Dialog(id: 19, text: "As a Storyweaver, you understood the importance of maintaining the integrity of the narratives.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        Dialog(id: 20, text: "The story had taken an unforeseen turn, unraveling secrets and unveiling the complexities of the characters involved.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "You were faced with a choice - to remain detached as the Storyweaver or to embrace your role as Timun Mas, to confront the emotions that swelled within you and seek resolution.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "(…So, what should we become?)", outcome: "Continue", nextDialogIDs: [23, 24], character: .storyweaver),
        Dialog(id: 23, text: "In a moment of agonizing decision, you embraced your role as the Storyweaver, tethered to the rule of non-intervention, despite the raging tempest of fury that threatened to consume you.", outcome: "The Storyweaver", nextDialogIDs: [40], character: .narrator),// SUB ENDING 5 start
        Dialog(id: 24, text: "In that moment, you chose to step forward, the boundaries between the Storyweaver and the character blurring. ", outcome: "Timun Mas", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "You approached Mbok Srini, looking into her eyes with a mixture of pain, understanding, and forgiveness.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "\"You are not a failure, dear Mother\"", outcome: "Continue", nextDialogIDs: [27], character: .timunMas),
        Dialog(id: 27, text: "You said softly, your voice filled with empathy.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        Dialog(id: 28, text: "\"We all make mistakes, and it is through those mistakes that we learn and grow.\"", outcome: "Continue", nextDialogIDs: [29], character: .timunMas),
        Dialog(id: 29, text: "\"You may have started as a character in a tale, but through the love and care you have given me, you became my mother in every sense of the word.\"", outcome: "Continue", nextDialogIDs: [30], character: .timunMas, emotion: .happy),
        Dialog(id: 30, text: "\"Timun Mas…\"", outcome: "Continue", nextDialogIDs: [31], character: .mbokSrini, emotion: .crying2),
        Dialog(id: 31, text: "Tears welled up in both your eyes as the weight of the truth and the depth of your bond washed over you.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "In that moment, you chose to embrace the complexity of the story and the emotions it stirred.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "You took Mbok Srini's hand, offering solace and forgiveness.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "With renewed strength and a shared resolve, you turned your attention back to Buto Ijo, who had watched the emotional exchange with a mix of curiosity and impatience. ", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "\"Cucumber… Child… Can’t… Defeat… Buto Ijo!\"", outcome: "Continue", nextDialogIDs: [36], character: .giant),
        Dialog(id: 36, text: "As Buto Ijo's taunts echoed through the air, you felt a surge of determination and resilience coursing through your veins.", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "You were no longer just a bystander in this story; you had become an active character, ready to protect and fight for those you cherished.", outcome: "Continue", nextDialogIDs: [38], character: .narrator),
        Dialog(id: 38, text: "In that moment, your mind brimmed with the possibilities that the narrative could unfold.", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
        Dialog(id: 39, text: "As a Storyweaver, you delighted in the unexpected twists and turns, and you reveled in the power of the story to shape the outcome.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
        //SUB ENDING 5
        
        Dialog(id: 40, text: "With unwavering resolve, you mustered every ounce of authority as the weaver of tales, severing the connection and forcibly detaching your consciousness from the character you had inhabited.", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
        Dialog(id: 41, text: "(I have no authority to guide your destiny, Timun Mas…)", outcome: "Continue", nextDialogIDs: [42], character: .storyweaver),
        Dialog(id: 42, text: "It was a choice laden with sorrow, for it meant tearing yourself away from the vessel that had held your essence, leaving them to face their own destinies, their own desperate battles against the encroaching monstrosity.", outcome: "Continue", nextDialogIDs: [43], character: .narrator),
        Dialog(id: 43, text: "Retreating to the sanctity of your abode, the domain of endless tales, you collapsed onto the hallowed ground, your body trembling with exhaustion and the weight of immeasurable grief.", outcome: "Continue", nextDialogIDs: [44], character: .narrator),
        Dialog(id: 44, text: "The encounter with the vile creature had left an indelible mark upon your consciousness, its echoes reverberating through the very fabric of your being.", outcome: "Continue", nextDialogIDs: [45], character: .narrator),
        Dialog(id: 45, text: "(…)", outcome: "Continue", nextDialogIDs: [46], character: .storyweaver),
        Dialog(id: 46, text: "As you contemplated the fate of the characters from the previous tale, a mixture of gratitude and longing washed over you.", outcome: "Continue", nextDialogIDs: [47], character: .narrator),
        Dialog(id: 47, text: "Gratitude for the experience of being enveloped in the warmth of parental love, relishing the opportunity to live as an ordinary human, free from the weight of your immense power.", outcome: "Continue", nextDialogIDs: [48], character: .narrator),
        Dialog(id: 48, text: "It was a cherished gift, one that you would forever hold dear in your heart.", outcome: "Continue", nextDialogIDs: [49], character: .narrator),
        Dialog(id: 49, text: "Yet, within the depths of your being, a spark of unwavering determination flickered to life.", outcome: "Continue", nextDialogIDs: [50], character: .narrator),
        Dialog(id: 50, text: "Despite the weariness that clung to your bones and the wounds etched upon your spirit, you yearned for the allure of another tale.", outcome: "Continue", nextDialogIDs: [51], character: .narrator),
        Dialog(id: 51, text: "The hunger for storytelling, for delving into the realms of imagination, burned brightly within you.", outcome: "Continue", nextDialogIDs: [1000], character: .storyweaver),
        
    ]
    
    
    static let DialogTreeScene13a: [Dialog] = [
        Dialog(id: 0, text: "Your consciousness as Timun Mas melded with the creative essence of the storyweaver, weaving a plan that transcended the bounds of conventional warfare.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "Harnessing the full might of your authority as a Storyweaver, you stretched forth your hand with fingers trembling with raw power.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "With a resolute gesture, you delved into the depths of your pocket, weaving an intricate web of magic that defied the boundaries of reality itself.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "\"Hahaha…\"", outcome: "Continue", nextDialogIDs: [4], character: .giant),
        Dialog(id: 4, text: "Buto Ijo's laughter echoed through the field, his confidence seemingly unshaken by the small object you held in your hand.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
        Dialog(id: 5, text: "You raised an eyebrow, maintaining your smirk as you met Buto Ijo's gaze.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "The air around you crackled with a sense of anticipation, as if the very fabric of the narrative was aligning itself with your words.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        
        // CUTSCENE
        
        Dialog(id: 7, text: "\"You see, Buto Ijo, defeating you won't be as straightforward as you think.\"", outcome: "Continue", nextDialogIDs: [8], character: .timunMas),
        Dialog(id: 8, text: "you declared, your voice carrying an air of intrigue.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "\"For within the realm of storytelling, the most unexpected things hold immense power.\"", outcome: "Continue", nextDialogIDs: [10], character: .timunMas),
        Dialog(id: 10, text: "\"Livingstock.. Talk… Too… MUCH!\"", outcome: "Continue", nextDialogIDs: [11], character: .giant),
        Dialog(id: 11, text: "As Buto Ijo charged forward, his eyes filled with determination, you remained calm and focused.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "With deliberate movements, you unfolded the small object in your hand and spread them on your path, revealing a set of seeds that glimmered with an otherworldly aura.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        
        //END CUTSCENE
        
        //MINIGAME SWIPE ZIG ZAG CABANG
        
        Dialog(id: 13, text: "Memories of your initial encounter with Mbok Srini flooded your mind, reminding you of the time when you were trapped within a cucumber and she came to your rescue.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Drawing upon that connection and the power of storytelling, you scattered the cucumber seeds along the ground before you.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "In a matter of seconds, an incredible transformation began to unfold. Sprouts emerged from the earth, growing rapidly and reaching towards the sky.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "To Buto Ijo's astonishment, the sprouts swiftly grew into luscious cucumber plants, their vines intertwining and spreading across the field.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "Within moments, a dense network of cucumber-filled foliage had formed, creating a natural barrier that hindered Buto Ijo's movement.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "\"Hard… Move… Annoying!\"", outcome: "Continue", nextDialogIDs: [19], character: .giant),
        Dialog(id: 19, text: "With a surge of strength, he managed to tear himself away from the entanglement, leaving behind remnants of broken vines.", outcome: "Continue", nextDialogIDs: [20], character: .narrator),
        
        //MINIGAME SWIPE BATANG
        
        Dialog(id: 20, text: "Undeterred by his escape, you remained composed and drawing upon the memories of your exploration with Mbok Srini in the bamboo forest.", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "You unfolded another small object in your hand and scattered the object on the path before you.", outcome: "Continue", nextDialogIDs: [22], character: .narrator),
        Dialog(id: 22, text: "In that instant, dozens of needles transformed into towering bamboo shoots, their long and sharp forms reaching towards the sky.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        Dialog(id: 23, text: "Buto Ijo, now confronted with the unexpected obstacle, found himself surrounded by the towering bamboo. ", outcome: "Continue", nextDialogIDs: [24], character: .narrator),
        Dialog(id: 24, text: "The dense grove of bamboo restricted his movement, preventing him from advancing further towards you.", outcome: "Timun Mas", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "The sharpness of the bamboo shoots posed a threat, causing him to tread with caution to avoid being impaled.", outcome: "Continue", nextDialogIDs: [26], character: .narrator),
        Dialog(id: 26, text: "\"Hurts… In… The… WAY!\"", outcome: "Continue", nextDialogIDs: [27], character: .giant),
        Dialog(id: 27, text: "As Buto Ijo broke free from the entanglement of the bamboo, his movements slowed, and he winced in pain from the sharp bamboo shoots that had grazed him.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        
        //MINIGAME HORIZONTAL SWIPE LAUT
        
        Dialog(id: 28, text: "Remembering the cherished memories of cooking with Mbok Srini, you unfolded another small object and tossed it onto the ground. ", outcome: "Continue", nextDialogIDs: [29], character: .narrator),
        Dialog(id: 29, text: "The scattered salts transformed into a vast expanse of water, stretching out before you like a boundless sea.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "With each step he took, the water rose higher, reaching his ankles, then his knees, and soon it reached his waist.", outcome: "Continue", nextDialogIDs: [31], character: .narrator),
        Dialog(id: 31, text: "Buto Ijo's movements became labored as he struggled against the force of the water, its currents pulling at him with relentless strength.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        Dialog(id: 32, text: "The deep sea before him posed a new challenge, threatening to engulf and submerge him if he dared to advance.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "But once again, he managed to escape by swimming on the sea. As Buto Ijo neared, fueled by his determination to defeat you, a surge of anger coursed through your veins.", outcome: "Continue", nextDialogIDs: [34], character: .narrator),
        Dialog(id: 34, text: "The recent tragedy that had befallen your beloved mother replayed in your mind, igniting a fiery rage within you.", outcome: "Continue", nextDialogIDs: [35], character: .narrator),
        Dialog(id: 35, text: "The boundary between the Storyweaver and Timun Mas blurred as both consciousnesses merged into a singular force.", outcome: "Continue", nextDialogIDs: [36], character: .narrator),
        
        //MINIGAME SWIPE MIRING
        
        Dialog(id: 36, text: "With a swift motion, you unfolded another small object, revealing a cluster of shrimp paste. Channeling your emotions into the act, you cast the shrimp paste onto the ground. ", outcome: "Continue", nextDialogIDs: [37], character: .narrator),
        Dialog(id: 37, text: "In a dramatic transformation, the paste melted and melded with the surrounding terrain, creating a scorching sea of boiling mud.", outcome: "Continue", nextDialogIDs: [38], character: .narrator),
        Dialog(id: 38, text: "The hot sea of mud materialized instantly, its intense heat radiating and filling the air. Buto Ijo, caught off guard by the sudden change, found himself sinking into the murky depths of the mud.", outcome: "Continue", nextDialogIDs: [39], character: .narrator),
        Dialog(id: 39, text: "The searing heat made each movement a struggle, as he fought against the unbearable temperatures.", outcome: "Timun Mas", nextDialogIDs: [40], character: .narrator),
        Dialog(id: 40, text: "With each passing moment, his strength waned, and despair flickered in his eyes. The once-mighty giant, now reduced to a fearful and defeated creature, gazed up at you with wide eyes filled with terror and confusion.", outcome: "Continue", nextDialogIDs: [41], character: .narrator),
        Dialog(id: 41, text: "\"Who… Are… You?\"", outcome: "Continue", nextDialogIDs: [42], character: .giant),
        Dialog(id: 42, text: "\"I am the Storyweaver.\"", outcome: "Continue", nextDialogIDs: [43], character: .timunMas),
        Dialog(id: 43, text: "You responded, your voice steady and filled with a newfound sense of purpose. ", outcome: "Continue", nextDialogIDs: [44], character: .narrator),
        Dialog(id: 44, text: "\"But for now, I am Timun Mas.\"", outcome: "Continue", nextDialogIDs: [45], character: .timunMas),
        Dialog(id: 45, text: "The words carried the weight of your dual existence as both the weaver of tales and the character immersed in the story.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
    ]
    
    static let DialogTreeScene14: [Dialog] = [
        Dialog(id: 0, text: "You turned to face Mbok Srini, her expression filled with confusion and uncertainty.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
        Dialog(id: 1, text: "The weight of the recent events hung heavy in the air, and you realized that the twists and turns of the story had left her questioning the truth of your identity.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
        Dialog(id: 2, text: "With utmost tenderness, you approached her, your eyes brimming with a mixture of compassion and understanding.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
        Dialog(id: 3, text: "The words caught in your throat, the weight of emotions threatening to overwhelm you.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
        Dialog(id: 4, text: "\"Mother, I...\"", outcome: "Continue", nextDialogIDs: [5], character: .timunMas, emotion: .confused),
        Dialog(id: 5, text: "You began, your voice a fragile whisper yet filled with unwavering conviction.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "And then, without a moment's hesitation, Mbok Srini enveloped you in her arms, her embrace a refuge amidst the storm of uncertainty. ", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
        Dialog(id: 7, text: "Tears streamed down her face, carrying a torrent of emotions that mirrored your own.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
        Dialog(id: 8, text: "In that tender moment, it was as if time stood still, and all that mattered was the profound connection between you.", outcome: "Continue", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "\"I am glad that you're safe\"", outcome: "Continue", nextDialogIDs: [10], character: .mbokSrini, emotion: .crying),
        Dialog(id: 10, text: "She whispered, her voice quivering with relief and a love that transcended words. ", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "In her eyes, you saw the depths of her fears and the immeasurable joy of finding you unharmed, a testament to the bond that had forged over years of shared experiences.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
        Dialog(id: 12, text: "In that sacred space between you and your mother, the convergence of both your consciousness as Timun Mas and the Storyweaver resonated harmoniously. ", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
        Dialog(id: 13, text: "For once, there was no contradiction, only an unspoken agreement that this was the ending they had both hoped for—a blissful reunion, free from the clutches of evil.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
        Dialog(id: 14, text: "Yet, amidst the euphoria, a bittersweet realization seeped into your being.", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
        Dialog(id: 15, text: "You had broken the sacred law of the Storyweaver, intervening in the course of the narrative, and now the threads that had woven your dual existence were unravelling.", outcome: "Continue", nextDialogIDs: [16], character: .narrator),
        Dialog(id: 16, text: "Your consciousness wavered, slowly fading, reminding you that the journey of the Storyweaver becoming Timun Mas had come to its destined end.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
        Dialog(id: 17, text: "Grasping your mother's hand, you wiped away her tears with a trembling touch.", outcome: "Continue", nextDialogIDs: [18], character: .narrator),
        Dialog(id: 18, text: "The weight of parting and the realization of the ephemeral nature of your existence intertwined with the undying love that bound you.", outcome: "Continue", nextDialogIDs: [19], character: .narrator),
        Dialog(id: 19, text: "\"I am Timun Mas, the cucumber child you took in all those years ago\"", outcome: "Continue", nextDialogIDs: [20], character: .timunMas, emotion: .happy),
        Dialog(id: 20, text: "You whispered, your voice filled with a profound mix of vulnerability and strength. ", outcome: "Continue", nextDialogIDs: [21], character: .narrator),
        Dialog(id: 21, text: "\"But I am also something more. I am the living embodiment of the folklores that unfolded — the Storyweaver.\"", outcome: "Continue", nextDialogIDs: [22], character: .timunMas, emotion: .happy),
        Dialog(id: 22, text: "As your consciousness as Timun Mas faded into the realm of memories, Mbok Srini held onto your hand with a lingering touch.", outcome: "Continue", nextDialogIDs: [23], character: .narrator),
        
        // START CUTSCENE
        
        Dialog(id: 23, text: "\"I have always known, deep down, that you were special.\"", outcome: "Continue", nextDialogIDs: [24], character: .mbokSrini),
        Dialog(id: 24, text: "She whispered, her voice filled with love and understanding.", outcome: "Continue", nextDialogIDs: [25], character: .narrator),
        Dialog(id: 25, text: "\"But to me, you would always be my precious cucumber child.\"", outcome: "Continue", nextDialogIDs: [26], character: .mbokSrini),
        Dialog(id: 26, text: "It was a farewell and a pledge all at once—a testament to the profound impact she had on your existence, as both character and weaver of tales.", outcome: "Continue", nextDialogIDs: [27], character: .narrator),
        Dialog(id: 27, text: "And with the weight of emotions resting heavily upon your heart, you mustered the last remnants of your consciousness.", outcome: "Continue", nextDialogIDs: [28], character: .narrator),
        Dialog(id: 28, text: "\"Thank you, Mbok Srini.\"", outcome: "Continue", nextDialogIDs: [29], character: .timunMas),
        Dialog(id: 29, text: "You offered a tender smile, letting it convey the depth of emotions that words couldn't fully express.", outcome: "Continue", nextDialogIDs: [30], character: .narrator),
        Dialog(id: 30, text: "\"You will always be the greatest gift in our life.\"", outcome: "Continue", nextDialogIDs: [31], character: .timunMas),
        Dialog(id: 31, text: "You whispered, the words carrying the depth of your love and gratitude.", outcome: "Continue", nextDialogIDs: [32], character: .narrator),
        
        // END CUTSCENE
        
        Dialog(id: 32, text: "And so, with a final breath of contentment and a heart filled with cherished memories, you surrendered to the embrace of the story's end, aware that the narrative of Timun Mas and Mbok Srini would persisted, moving forward without the intervention of a Storyweaver.", outcome: "Continue", nextDialogIDs: [33], character: .narrator),
        Dialog(id: 33, text: "The chapter of Timun Mas had come to an end for you, O’ Storyweaver.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
        
    ]
    
    static let DialogTreeEpilogue: [Dialog] = [
        Dialog(id: 0, text: "(To Buto Ijo, I was an insignificant creature that is capable of subduing his viciousness and transcended his own existence…)", outcome: "Continue", nextDialogIDs: [1], character: .storyweaver),
        Dialog(id: 1, text: "(To mortal understanding, I am the guardian of tales — keeper of the delicate balance that allowed these realms to thrive…)", outcome: "Continue", nextDialogIDs: [2], character: .storyweaver),
        Dialog(id: 2, text: "(…)", outcome: "Continue", nextDialogIDs: [3], character: .storyweaver),
        Dialog(id: 3, text: "(…)", outcome: "Continue", nextDialogIDs: [4], character: .storyweaver),
        Dialog(id: 4, text: "(Why did I save a mere mortal from my own tales?)", outcome: "Continue", nextDialogIDs: [5], character: .storyweaver),
        Dialog(id: 5, text: "(…)", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
        Dialog(id: 6, text: "(Why did I break the rule that govern my existence for her?)", outcome: "Continue", nextDialogIDs: [7], character: .storyweaver),
        Dialog(id: 7, text: "(…)", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 8, text: "(She may have been a character in a different tale, a part of the vast and intricate web of stories I have explored.)", outcome: "(How could she discards me in such heartless manner?)", nextDialogIDs: [9], character: .narrator),
        Dialog(id: 9, text: "(But in her eyes, I was simply her peculiar daughter — one she nurtured and raised as her own, providing love, guidance, and support…)", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
        
        Dialog(id: 10, text: "(…)", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [11], character: .narrator),
        Dialog(id: 11, text: "(Or perhaps, it was my own longing for parental love that propelled me to intervene?)", outcome: "(How could she have played such a cruel charade?)", nextDialogIDs: [], character: .narrator),
    ]
}


