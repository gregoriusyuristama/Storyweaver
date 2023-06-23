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
                Dialog(id: 4, text: "\"In the name of Buto Ijo, I beg your forgiveness.\"", outcome: "Continue", nextDialogIDs: [5], character: .mbokSrini),
                Dialog(id: 5, text: "The woman pleaded as her voice trembled with fear and humility. ", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
                Dialog(id: 6, text: "\"This mere human was only attempting to rescue this young girl.\"", outcome: "Continue", nextDialogIDs: [7], character: .mbokSrini),
                Dialog(id: 7, text: "Her voice quivered with sincerity as she implore for mercy.", outcome: "Continue", nextDialogIDs: [8, 9], character: .narrator),
                Dialog(id: 8, text: "BRANCH", outcome: "Crying out of fear", nextDialogIDs: [1000], character: .narrator),
                Dialog(id: 9, text: "\"Strong… Eyes… Quality… Livestock.\" he said with a sinister smile.", outcome: "Stare at Buto Ijo with anger", nextDialogIDs: [11], character: .giant),
                Dialog(id: 10, text: "BRANCH 2", outcome: "Continue", nextDialogIDs: [], character: .narrator),
                Dialog(id: 11, text: "The giant’s colossal arm extended slowly toward you.", outcome: "Continue", nextDialogIDs: [12, 13], character: .narrator),
                Dialog(id: 12, text: "Tears streamed down your face as the colossal arm neared, poised to snatch you away. ", outcome: "Plea for assistance", nextDialogIDs: [14], character: .narrator),
                Dialog(id: 13, text: "BRANCH 3", outcome: "Exercise Storyweaver's authority", nextDialogIDs: [1000], character: .narrator),
                Dialog(id: 14, text: "Just as it was about to grasp you, the old woman swiftly shielded you within the safety of her embrace. ", outcome: "Continue", nextDialogIDs: [15], character: .narrator),
                Dialog(id: 15, text: "\"I wish to negotiate…\"", outcome: "Continue", nextDialogIDs: [16], character: .mbokSrini),
                Dialog(id: 16, text: "Her tone took on an intimidating edge, hinting at a hidden strength within her frightened self.", outcome: "Continue", nextDialogIDs: [17], character: .narrator),
                Dialog(id: 17, text: "Carefully, she placed you into a basket she had been carrying and cautiously approached the towering giant and engage in a conversation with him. ", outcome: "Continue", nextDialogIDs: [18, 19], character: .narrator),
                Dialog(id: 18, text: "Unable to discern their conversation, you anxiously watched and approached them as they exchanged words where you ears only caught two distinct words. ", outcome: "Try to listen", nextDialogIDs: [20], character: .narrator),
                Dialog(id: 19, text: "Unable to discern their conversation, you anxiously watched and approached them as they exchanged words where you ears only caught two distinct words. ", outcome: "Crawl to them", nextDialogIDs: [20], character: .narrator),
                Dialog(id: 20, text: "\"Eight… Years\"", outcome: "Continue", nextDialogIDs: [], character: .giant),
               
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
                Dialog(id: 1, text: "BRANCH", outcome: "Your uninterrupted mortal sleep", nextDialogIDs: [2], character: .narrator),
                Dialog(id: 2, text: "\"I will be doing the yard, dear Mother.\"", outcome: "Your daily routine", nextDialogIDs: [3], character: .timunMas),
                Dialog(id: 3, text: "Your determined words brought a smile to your mother. Mbok Srini looked at you with a mix of pride and appreciation.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
                Dialog(id: 4, text: "\"Take your time, Timun Mas.\"", outcome: "Continue", nextDialogIDs: [5], character: .mbokSrini),
                Dialog(id: 5, text: "\"The yard will flourish under your loving touch. I am grateful for all the effort you put into making our surroundings beautiful.\"", outcome: "Continue", nextDialogIDs: [], character: .mbokSrini),
                
    ]
    
    
    static let DialogTreeScene7: [Dialog] = [
                Dialog(id: 0, text: "With her words of encouragement resonating in your heart, you step out into the fresh morning air, feeling a sense of purpose and responsibility. ", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
                Dialog(id: 1, text: "As you survey the yard, you notice the blades of grass gently swaying in the breeze, and the colorful blossoms that dot the landscape.", outcome: "Continue", nextDialogIDs: [2, 5, 7, 8], character: .narrator),
                Dialog(id: 2, text: "(I’ll start with tending the plants…)", outcome: "Continue", nextDialogIDs: [3], character: .timunMas),
                Dialog(id: 3, text: "With each droplet that nourished the thirsty earth, the plants seemed to come alive, responding to the rejuvenating touch of water.", outcome: "Watering plant", nextDialogIDs: [4], character: .narrator),
                Dialog(id: 4, text: "(Vibrant flowers, once slightly wilted, regain their luster and stand tall in vibrant hues… Such joy to witness.)", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
                Dialog(id: 5, text: "Each tug of the weed brought a satisfying release, as if removing a burden from the earth and allowing surrounding plants to breathe and thrive.", outcome: "Pulling Weeds", nextDialogIDs: [6], character: .narrator),
                Dialog(id: 6, text: "(The vibrant flowers and verdant foliage can now stretch their roots and soak up the nutrients of the soil without competition… Such refreshing to view.)", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
                Dialog(id: 7, text: "As the shears met the branches, a satisfying snip fills the air, marking the transformation taking place. The once unruly bushes started to take on a more defined and refined form.", outcome: "Trim bushes", nextDialogIDs: [1], character: .narrator),
                Dialog(id: 8, text: "(The garden, now with its revitalized bushes, exudes a sense of tranquility and order. It is a symphony of nature and human intervention. Such fascination to look.)", outcome: "Continue", nextDialogIDs: [], character: .narrator),
                
    ]
    
    static let DialogTreeScene8: [Dialog] = [
                Dialog(id: 0, text: "Mbok Srini arrived with her face beaming with joy as she surveyed the transformed yard. ", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
                Dialog(id: 1, text: "\"The yard is looking beautiful!\"", outcome: "Continue", nextDialogIDs: [2], character: .mbokSrini),
                Dialog(id: 2, text: "she exclaimed with delight. Her words filled me with a sense of accomplishment, knowing that my efforts had not gone unnoticed.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
                Dialog(id: 3, text: "\"It must have been tiring.\"", outcome: "Continue", nextDialogIDs: [4], character: .mbokSrini),
                Dialog(id: 4, text: "she continued, her voice filled with concern.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
                Dialog(id: 5, text: "\"Why don't you take a well-deserved rest and go somewhere for a while? I will take care of cleaning the house.\"", outcome: "Continue", nextDialogIDs: [6], character: .mbokSrini),
                Dialog(id: 6, text: "The sun now stood high in the sky, beckoning you towards your next adventure into the realms of this folklore. ", outcome: "Continue", nextDialogIDs: [7, 8], character: .narrator),
                Dialog(id: 7, text: "BRANCH", outcome: "\"I think I’ll take a short break.\"", nextDialogIDs: [000], character: .mbokSrini),
                Dialog(id: 8, text: "\"Now, go on! Take your time.\"", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .mbokSrini),
                Dialog(id: 9, text: "With a nod and a grateful smile, you acknowledged her advice and headed out to seize the day. With a final glance back at my foster mother, you began to make your way towards the dense forest that lay just beyond your humble abode.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
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
                Dialog(id: 27, text: "BRANCH", outcome: "Wait longer… ", nextDialogIDs: [], character: .narrator),
                Dialog(id: 28, text: "With a heavy heart, you decided it was time to return home. The uneasiness that gnawed at your consciousness as Timun Mas was a clear indication that something was amiss.", outcome: "Go home...", nextDialogIDs: [], character: .narrator),
                
                
//                Dialog(id: 29, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
//                Dialog(id: 30, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .narrator),
//                Dialog(id: 31, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
//                Dialog(id: 32, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .narrator),
//                Dialog(id: 33, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
//                Dialog(id: 34, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .narrator),
//                Dialog(id: 35, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
//                Dialog(id: 36, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .narrator),
//                Dialog(id: 37, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
//                Dialog(id: 38, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .narrator),
//                Dialog(id: 39, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
//                Dialog(id: 40, text: "You directed your gaze towards the giant. To your surprise, he appeared to be happy, a stark contrast to his usual grumpy and irritable demeanor.", outcome: "\"I think I’ll stay here after all.\"", nextDialogIDs: [9], character: .narrator),
//                Dialog(id: 41, text: "His sinister smile intrigued you, but with a resolute determination as a Storyweaver, it was not your place to pry into the thoughts and actions of the characters.", outcome: "Continue", nextDialogIDs: [], character: .narrator),

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
                Dialog(id: 6, text: "\"When she returns home, I am sure he will be greatly surprised.\"", outcome: "Continue", nextDialogIDs: [7], character: .mbokSrini),
                Dialog(id: 7, text: "Your steps halted.", outcome: "Continue", nextDialogIDs: [8], character: .narrator),
                Dialog(id: 8, text: "\"She might perceive me as a failed mother, perhaps even come to hate me.\"", outcome: "Continue", nextDialogIDs: [9], character: .mbokSrini),
                Dialog(id: 9, text: "She spoke directly to the giant, her eyes conveying both fear and determination.", outcome: "Continue", nextDialogIDs: [10], character: .narrator),
                Dialog(id: 10, text: "\"At first, she was a replacement for those I had lost. However, after all these years together...\"", outcome: "Continue", nextDialogIDs: [11], character: .mbokSrini),
                Dialog(id: 11, text: "Tears welled up in her eyes, yet she put on a brave facade and smiled.", outcome: "Continue", nextDialogIDs: [12], character: .narrator),
                Dialog(id: 12, text: "\"How could I not acknowledge her as my beloved daughter?\"", outcome: "Continue", nextDialogIDs: [13], character: .mbokSrini),
                Dialog(id: 13, text: "The words echoed in the air, carrying the weight of Mbok Srini's remorse and love.", outcome: "Continue", nextDialogIDs: [14], character: .narrator),
                Dialog(id: 14, text: "A mix of emotions surged within you, conflicting and intertwining as the truth unveiled itself.", outcome: "Continue", nextDialogIDs: [], character: .narrator),
                Dialog(id: 0, text: "The betrayal you had felt was tempered by the realization that Mbok Srini had come to love and cherish you as her own daughter, despite the circumstances of your arrival.", outcome: "Continue", nextDialogIDs: [1], character: .narrator),
                Dialog(id: 1, text: "Your consciousness as Timun Mas wavered, torn between the hurt caused by the revelation and the undeniable bond that had formed between you and Mbok Srini.", outcome: "Continue", nextDialogIDs: [2], character: .narrator),
                Dialog(id: 2, text: "The weight of her words settled upon you, their impact seeping into your heart.", outcome: "Continue", nextDialogIDs: [3], character: .narrator),
                Dialog(id: 3, text: "It was a moment of vulnerability, of recognizing the depth of emotions that had entangled your lives.", outcome: "Continue", nextDialogIDs: [4], character: .narrator),
                Dialog(id: 4, text: "As a Storyweaver, you understood the importance of maintaining the integrity of the narratives.", outcome: "Continue", nextDialogIDs: [5], character: .narrator),
                Dialog(id: 5, text: "The story had taken an unforeseen turn, unraveling secrets and unveiling the complexities of the characters involved.", outcome: "Continue", nextDialogIDs: [6], character: .narrator),
                Dialog(id: 6, text: "You were faced with a choice - to remain detached as the Storyweaver or to embrace your role as Timun Mas, to confront the emotions that swelled within you and seek resolution.", outcome: "Continue", nextDialogIDs: [7], character: .narrator),
                Dialog(id: 7, text: "(…So, what should we become?)", outcome: "Continue", nextDialogIDs: [8], character: .storyweaver),
                Dialog(id: 8, text: "BRANCH", outcome: "The Storyweaver", nextDialogIDs: [9], character: .mbokSrini),
                Dialog(id: 9, text: "In that moment, you chose to step forward, the boundaries between the Storyweaver and the character blurring. ", outcome: "Timun Mas", nextDialogIDs: [10], character: .narrator),
                Dialog(id: 10, text: "You approached Mbok Srini, looking into her eyes with a mixture of pain, understanding, and forgiveness.", outcome: "Continue", nextDialogIDs: [11], character: .narrator),
                Dialog(id: 11, text: "\"You are not a failure, dear Mother\"", outcome: "Continue", nextDialogIDs: [12], character: .timunMas),
                Dialog(id: 12, text: "You said softly, your voice filled with empathy.", outcome: "Continue", nextDialogIDs: [13], character: .narrator),
                Dialog(id: 13, text: "\"We all make mistakes, and it is through those mistakes that we learn and grow.\"", outcome: "Continue", nextDialogIDs: [14], character: .timunMas),
                Dialog(id: 14, text: "\"You may have started as a character in a tale, but through the love and care you have given me, you became my mother in every sense of the word.\"", outcome: "Continue", nextDialogIDs: [], character: .timunMas),
        ]
}


