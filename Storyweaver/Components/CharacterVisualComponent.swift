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
    let characterNode: SKSpriteNode
    let type: CharacterList
    
    init(type: CharacterList, size: CGSize, pos: CharacterPosition? = .center){
        
        var charImage = SKSpriteNode()
        
        switch type{
        case.timunMas:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
        case .giant:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
        case .narrator:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
        case .storyweaver:
            charImage = SKSpriteNode(imageNamed: type.rawValue)
        case .mbokSrini:
            charImage = SKSpriteNode(imageNamed: type.rawValue)

        }
        
        switch pos{
        case.left:
            let desiredSize = CGSize(width: size.width, height: size.height)
            let scaleFactor = min(desiredSize.width / charImage.size.width, desiredSize.height / charImage.size.height)
            charImage.size = CGSize(width: charImage.size.width * scaleFactor, height: charImage.size.height * scaleFactor)
            
            charImage.setScale(scaleFactor)
            charImage.position = CGPoint(x: charImage.size.width / 2, y: size.height/2)
        case .right:
            let desiredSize = CGSize(width: size.width, height: size.height)
            let scaleFactor = min(desiredSize.width / charImage.size.width, desiredSize.height / charImage.size.height)
            charImage.size = CGSize(width: charImage.size.width * scaleFactor, height: charImage.size.height * scaleFactor )
            charImage.setScale(scaleFactor * 1.5)
            charImage.position = CGPoint(x: size.width/2 + charImage.size.width / 3, y: size.height/2)
        case .center:
            charImage.position = CGPoint(x:size.width/2, y: size.height/2)
            charImage.scale(to: CGSize(width: size.width, height: size.height))
        case .none:
            charImage.position = CGPoint(x:size.width/2, y: size.height/2)
            charImage.scale(to: CGSize(width: size.width, height: size.height))
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
