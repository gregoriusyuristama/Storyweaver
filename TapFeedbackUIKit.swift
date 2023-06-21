//
//  TapFeedbackUIKit.swift
//  Storyweaver
//
//  Created by Wita Dewisari Tasya on 21/06/23.
//

import UIKit

class ViewController: UIViewController {

    private var circleView: UIView!
    private var circlePosition: CGPoint = .zero
    private var isTapped: Bool = false
    private var tapLocation: CGPoint = .zero

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupGesture()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        
        circleView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        circleView.center = circlePosition
        circleView.backgroundColor = .blue
        circleView.alpha = 0.0
        view.addSubview(circleView)
    }
    
    private func setupGesture() {
        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc private func handlePan(_ gestureRecognizer: UIPanGestureRecognizer) {
        switch gestureRecognizer.state {
        case .began, .changed:
            isTapped = true
            let location = gestureRecognizer.location(in: view)
            circlePosition = location
            circleView.center = circlePosition
            circleView.alpha = isTapped ? 0.5 : 0.0
        case .ended, .cancelled:
            isTapped = false
            UIView.animate(withDuration: 0.3) {
                self.circleView.alpha = self.isTapped ? 0.5 : 0.0
            }
        default:
            break
        }
    }
}


