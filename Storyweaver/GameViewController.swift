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
    var gameScene: ThirdScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//                // Create the SKView
//                gameView = SKView(frame: view.bounds)
//                view.addSubview(gameView)
//
//                // Create the GameScene
//                gameScene = ThirdScene(size: gameView.bounds.size)
//                gameScene.scaleMode = .aspectFill
//
//                // Present the GameScene in the SKView
//                gameView.presentScene(gameScene)
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = ActTitleScene(fileNamed: "ActTitleScene") {
                // Set the scale mode to scale to fit the window
                scene.actNumber = 1
                scene.actTitle = "The Birth of Legend"
                scene.scaleMode = .aspectFill

                // Present the scene
                view.presentScene(scene)
            }

            //          view.ignoresSiblingOrder = true

            //          view.showsFPS = true
            //          view.showsNodeCount = true
            view.ignoresSiblingOrder = false
        }
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
