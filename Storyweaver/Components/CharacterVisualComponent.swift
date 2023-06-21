//
//  CharacterVisualComponent.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/18/23.
//

import Foundation
import GameplayKit
import SpriteKit



class CharacterVisualComponent: GKComponent {
    let characterNode: SKNode
    let type: CharacterList
    
    init(type: CharacterList, size: CGSize){
        
        var charImage = SKSpriteNode()
        
        switch type{
        case.timunMas:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
            charImage.position = CGPoint(x: charImage.size.width, y: size.height/2)
        case .giant:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
            charImage.position = CGPoint(x:charImage.size.width, y: size.height/2)
        case .narrator:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
            charImage.position = CGPoint(x:size.width/2, y: size.height/2)
        case .storyweaver:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
            charImage.position = CGPoint(x:size.width/2, y: size.height/2)
        case .mbokSrini:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
            charImage.position = CGPoint(x: charImage.size.width, y: size.height/2)
        }
        
        //        charImage.scale(to: CGSize(width: size.width/2,height: size.height))
        charImage.name = type.rawValue
        charImage.zPosition = -1
        self.type = type
        
        characterNode = charImage
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
