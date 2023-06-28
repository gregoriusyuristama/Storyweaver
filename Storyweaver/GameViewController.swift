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
        let initialScene = SeventhScene(size: skView.bounds.size)
        initialScene.scaleMode = .aspectFill

        skView.presentScene(initialScene)
        
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
