//
//  HelperFunction.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/25/23.
//

import Foundation
import SpriteKit
import GameplayKit


class CreateEntity {
    init () {}
    
    static func mbokSriniEntity(scene: SKScene, pos: CharacterPosition? = .center) -> GKEntity{
        let mbokSrini = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .mbokSrini, size: scene.size, pos: pos)
        mbokSrini.addComponent(characterVisualComponent)
        scene.addChild(characterVisualComponent.characterNode)
        return mbokSrini
    }
    
    static func storyWeaverEntity(scene: SKScene,pos: CharacterPosition? = .center) -> GKEntity {
        let storyweaver = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .storyweaver, size: scene.size, pos: pos)
        storyweaver.addComponent(characterVisualComponent)
        
        scene.addChild(characterVisualComponent.characterNode)
        return storyweaver
    }
    
    static func narratorEntity(scene: SKScene, pos: CharacterPosition? = .center) -> GKEntity {
        let narrator = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .narrator, size: scene.size, pos: pos)
        narrator.addComponent(characterVisualComponent)
        
        scene.addChild(characterVisualComponent.characterNode)
        return narrator
    }
    
    static func giantEntity(scene: SKScene, pos: CharacterPosition? = .center) -> GKEntity {
        let giant = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .giant, size: scene.size, pos: pos)
        giant.addComponent(characterVisualComponent)
        scene.addChild(characterVisualComponent.characterNode)
        return giant
    }
    
    static func timunMasEntity(scene: SKScene, pos: CharacterPosition? = .center) -> GKEntity {
        let timunMas = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .timunMas, size: scene.size, pos: pos)
        timunMas.addComponent(characterVisualComponent)
        
        scene.addChild(characterVisualComponent.characterNode)
        return timunMas
    }
}
