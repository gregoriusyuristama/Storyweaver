//
//  FirstPersonScene.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/20/23.
//

import SpriteKit
import GameplayKit


class ActTitleScene: SKScene {
    
    var numOfAct: SKLabelNode!
    var actTitleLabel: SKLabelNode!
    
    var actNumber: Int = 1
    var actTitle: String = ""
    
    var nextScene: SKScene = FirstScene()
    
    override func didMove(to view: SKView) {
        AudioManager.shared.playBackgroundMusic(fileName: "scene1")
        numOfAct = childNode(withName: "noActLabel") as? SKLabelNode
        numOfAct.text = "ACT \(actNumber)"
        
        actTitleLabel = childNode(withName: "actTitleLabel") as? SKLabelNode
        actTitleLabel.text = "\(actTitle)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = nextScene
        gameScene.size = size
        let transition = SKTransition.fade(with: .white, duration: 1)
        view?.presentScene(gameScene, transition: transition)
    }
    
}
