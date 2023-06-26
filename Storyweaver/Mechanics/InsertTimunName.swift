//
//  InsertTimunName.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/26/23.
//

import Foundation
import SpriteKit


class InsertTimunName: SKScene {
    let letters: [String] = ["T", "I", "M", "U", "N"]
    var shuffledLetters: [String] = []
    var correctOrder: [String] = []
    var counter: Int = 0
    var correctAnswers: Int = 0
    var tappedLetters: Set<String> = []
    
    var letterLabels: [SKLabelNode] = []
    var underscoreLabels: [SKLabelNode] = []
    
    
    override init() {
        super.init()
    }
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        startGame()
    }
    
    func startGame() {
        repeat {
            shuffledLetters = letters.shuffled()
            
        } while shuffledLetters == letters
                    
        correctOrder = letters // Set the correct order as the original array
        print(correctOrder)
        print(shuffledLetters)
        
        let labelWidth: CGFloat = 50
        let labelSpacing: CGFloat = 20
        let totalWidth = CGFloat(shuffledLetters.count) * (labelWidth + labelSpacing) - labelSpacing
        let startX = (size.width - totalWidth) / 2
        let startY = size.height / 2 + 50
        
        for (index, _) in shuffledLetters.enumerated() {
            let underscoreLabel = SKLabelNode(text: "_")
            underscoreLabel.fontColor = .white
            underscoreLabel.fontSize = 56
            underscoreLabel.fontName = "Aleo-Bold"
            underscoreLabel.position = CGPoint(x: startX + labelWidth / 2 + (labelWidth + labelSpacing) * CGFloat(index), y: startY + 100)
            addChild(underscoreLabel)
            underscoreLabels.append(underscoreLabel)
        }
        
        // Display shuffled letters on the screen as SKLabels
        for (index, letter) in shuffledLetters.enumerated() {
            let label = SKLabelNode(text: letter)
            label.fontName = "Aleo-Regular"
            label.fontSize = 48
            label.color = .white
            label.position = CGPoint(x: startX + labelWidth / 2 + (labelWidth + labelSpacing) * CGFloat(index), y: size.height / 2)
            addChild(label)
            
            // Add physics body to enable interaction
            let bodySize = CGSize(width: labelWidth, height: label.frame.size.height)
            let bodyOffset = CGPoint(x: 0, y: -label.frame.size.height / 2)
            label.physicsBody = SKPhysicsBody(rectangleOf: bodySize, center: bodyOffset)
            label.physicsBody?.isDynamic = true
            label.physicsBody?.categoryBitMask = 1
            label.physicsBody?.contactTestBitMask = 0
            label.physicsBody?.affectedByGravity = false
            
            letterLabels.append(label)
            
        }
    }
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let node = self.atPoint(location)
            
            if let label = node as? SKLabelNode {
                // Check if the label is in the correct position
                let letter = label.text ?? ""
                let index = correctOrder.firstIndex(of: letter) ?? -1
                
                
                if !tappedLetters.contains(letter) {
                    if index == counter {
                        //                        label.run(SKAction.colorize(with: .green, colorBlendFactor: 1.0, duration: 0.5))
                        underscoreLabels[counter].run(SKAction.colorize(with: .green, colorBlendFactor: 1.0, duration: 0.5))
                        correctAnswers += 1
                        
                    } else {
                        //                        label.run(SKAction.colorize(with: .red, colorBlendFactor: 1.0, duration: 0.5))
                        underscoreLabels[counter].run(SKAction.colorize(with: .red, colorBlendFactor: 1.0, duration: 0.5))
                        
                    }
                    label.alpha = 0
                    tappedLetters.insert(letter)
                } else {
                    return
                }
                
                underscoreLabels[counter].text = letter
                
                counter += 1
                if counter == letters.count {
                    if correctAnswers == letters.count {
                        print("all correct")
                    } else {
                        for child in children {
                            if let labelNode = child as? SKLabelNode {
                                //                                let delayAction = SKAction.wait(forDuration: 0.5)
                                //                                let colorizeAction = SKAction.colorize(with: .white, colorBlendFactor: 1.0, duration: 0.5)
                                //                                let sequence = SKAction.sequence([delayAction, colorizeAction])
                                //                                labelNode.ru
                                let fadeInAction = SKAction.fadeIn(withDuration: 0.8)
                                let changeAlpha = SKAction.run {
                                    labelNode.alpha = 1
                                }
                                let sequence = SKAction.sequence([fadeInAction, changeAlpha])
                                labelNode.run(sequence)
                            }
                        }
                        
                        for underscoreLabel in underscoreLabels {
                            let colorizeAction = SKAction.colorize(with: .white, colorBlendFactor: 1.0, duration: 0.5)
                            let fadeOutAction = SKAction.fadeOut(withDuration: 0.3)
                            let changeTextAction = SKAction.run {
                                underscoreLabel.text = "_"
                            }
                            let fadeInAction = SKAction.fadeIn(withDuration: 0.3)
                            let sequence = SKAction.sequence([fadeOutAction, changeTextAction, colorizeAction, fadeInAction])
                            underscoreLabel.run(sequence)
                           
                        }
                    }
                    print("reset")
                    counter = 0
                    correctAnswers = 0
                    tappedLetters.removeAll()
                }
            }
        }
    }
    
}
