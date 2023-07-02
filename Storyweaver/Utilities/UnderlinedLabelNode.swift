//
//  UnderlinedLabelNode.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 7/2/23.
//
import SpriteKit
import UIKit

class UnderlinedLabelNode: SKNode {
    private let labelNode: SKLabelNode
    private let underlineNode: SKShapeNode
    
    var text: String? {
        get { return labelNode.text }
        set {
            labelNode.text = newValue
            updateUnderline()
        }
    }
    
    var fontName: String {
        get { return labelNode.fontName! }
        set {
            labelNode.fontName = newValue
            updateUnderline()
        }
    }
    
    var fontSize: CGFloat {
        get { return labelNode.fontSize }
        set {
            labelNode.fontSize = newValue
            updateUnderline()
        }
    }
    
    var fontColor: SKColor {
        get { return labelNode.fontColor ?? SKColor.white }
        set {
            labelNode.fontColor = newValue
            updateUnderline()
        }
    }
    
    var underlineColor: SKColor {
        get { return underlineNode.strokeColor }
        set { underlineNode.strokeColor = newValue }
    }
    
    init(fontNamed fontName: String) {
        self.labelNode = SKLabelNode(fontNamed: fontName)
        self.underlineNode = SKShapeNode()
        
        super.init()
        
        addChild(labelNode)
        addChild(underlineNode)
        
        updateUnderline()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func updateUnderline() {
        underlineNode.path = nil // Clear previous path
        
        if let text = labelNode.text {
            let font = UIFont(name: labelNode.fontName!, size: labelNode.fontSize) ?? UIFont.systemFont(ofSize: labelNode.fontSize)
            let attributes: [NSAttributedString.Key: Any] = [
                .font: font,
                .foregroundColor: labelNode.fontColor ?? UIColor.white
            ]
            let attributedString = NSAttributedString(string: text, attributes: attributes)
            
            labelNode.attributedText = attributedString
            
            let textSize = attributedString.size()
            let underlineOrigin = CGPoint(x: -textSize.width / 2, y: -textSize.height / 2 + labelNode.frame.height / 2)
            let underlineSize = CGSize(width: textSize.width, height: 1.0)
            let underlineRect = CGRect(origin: underlineOrigin, size: underlineSize)
            
            underlineNode.path = CGPath(rect: underlineRect, transform: nil)
        }
    }
}
