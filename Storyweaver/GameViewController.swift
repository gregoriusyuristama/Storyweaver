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
    
//    var gameView: SKView!
//    var gameScene: PrologueScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the view
        let skView = view as! SKView
        skView.frame = view.bounds

        skView.showsFPS = true
        skView.showsNodeCount = true

        // Create and present the initial scene
        let initialScene = SwipeToClearImage(size: skView.bounds.size)
        initialScene.scaleMode = .aspectFill

        skView.presentScene(initialScene)
        
        
//        if let view = self.view as! SKView? {
//            // Load the SKScene from 'GameScene.sks'
//            if let scene = ActTitleScene(fileNamed: "ActTitleScene") {
//                // Set the scale mode to scale to fit the window
//                scene.actNumber = 1
//                scene.actTitle = "The Birth of Legend"
//                scene.scaleMode = .aspectFill
//
//                // Present the scene
//                view.presentScene(scene)
//            }
//
//            //          view.ignoresSiblingOrder = true
//
//            view.showsFPS = true
//            view.showsNodeCount = true
//            view.ignoresSiblingOrder = false
//        }
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
