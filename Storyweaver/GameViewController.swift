//
//  GameViewController.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/16/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var gameView: SKView!
    var gameScene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the SKView
        gameView = SKView(frame: view.bounds)
        view.addSubview(gameView)
        
        // Create the GameScene
        gameScene = GameScene(size: gameView.bounds.size)
        gameScene.scaleMode = .aspectFill
        
        // Present the GameScene in the SKView
        gameView.presentScene(gameScene)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        gameScene.animateTextDisplay()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
