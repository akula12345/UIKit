//
//  ViewController.swift
//  Practice_Gestures
//
//  Created by Вячеслав on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak private var redView: UIView!
    @IBOutlet weak private var centerXConstraint: NSLayoutConstraint!
    @IBOutlet weak private var centerYConstraint: NSLayoutConstraint!
    
    //MARK: - Vatiables
    let panGestureRecognizer = UIPanGestureRecognizer()
    let pinchGestureRecognizer = UIPinchGestureRecognizer()
    let rotationGestureRecognizer = UIRotationGestureRecognizer()
    let tapGestureRecognizer = UITapGestureRecognizer()
    var panGestureAnchorPoint: CGPoint?
    var defaultCenter: CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        defaultCenter = view.center
        
        panGestureRecognizer.addTarget(self, action: #selector(handlePanGesture(_:))) //Добавляем таргет для panGestureRecognizer
        pinchGestureRecognizer.addTarget(self, action: #selector(handlePinchGesture(_:))) //Добавляем таргет для pinchGestureRecognizer
        rotationGestureRecognizer.addTarget(self, action: #selector(handleRotationGesture(_:))) //Добавляем таргет для rotationGestureRecognizer
        tapGestureRecognizer.addTarget(self, action: #selector(handleTapGesture(_:))) //Добавляем таргет для tapGestureRecognizer
        
        //Добавляем Gestures в View
        redView.addGestureRecognizer(pinchGestureRecognizer)
        redView.addGestureRecognizer(rotationGestureRecognizer)
        redView.addGestureRecognizer(tapGestureRecognizer)
        redView.addGestureRecognizer(panGestureRecognizer)
    }
    //Transition
    @objc func handlePanGesture(_ panGesture: UIPanGestureRecognizer) {
        guard panGestureRecognizer === panGesture else { return }
        
        switch panGesture.state {
        case .began:
            panGestureAnchorPoint = panGesture.location(in: view)
        case .changed:
            guard let panGestureAnchorPoint = panGestureAnchorPoint else { return }
            
            let gesturePoint = panGesture.location(in: view)
            
            centerXConstraint.constant += gesturePoint.x - panGestureAnchorPoint.x
            centerYConstraint.constant += gesturePoint.y - panGestureAnchorPoint.y
            
            self.panGestureAnchorPoint = gesturePoint
        case .cancelled, .possible:
            panGestureAnchorPoint = nil
        case .failed, .ended:
            break
        default:
            break
        }
    }
    //Rotation
    @objc func handleRotationGesture(_ rotateGesture: UIRotationGestureRecognizer) {
        guard rotationGestureRecognizer === rotateGesture else { return }
        
        redView.transform = CGAffineTransform.identity.rotated(by: rotateGesture.rotation)
    }
    //Scale
    @objc func handlePinchGesture(_ pinchGesture: UIPinchGestureRecognizer) {
        guard pinchGestureRecognizer === pinchGesture else { return }
        
        redView.transform = CGAffineTransform.identity.scaledBy(x: pinchGesture.scale, y: pinchGesture.scale)
    }
    //Random Color and return to starting position
    @objc func handleTapGesture(_ tapGesture: UITapGestureRecognizer) {
        guard tapGestureRecognizer === tapGesture else { return }
        guard let defatulCenterPosition = defaultCenter else { return }
        redView.backgroundColor = UIColor(red: CGFloat.random(in: 0.0...1.0), green: CGFloat.random(in: 0.0...1.0), blue: CGFloat.random(in: 0.0...1.0), alpha: 1)
        redView.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)
        redView.transform = CGAffineTransform.identity.rotated(by: 0.0)
        redView.center = defatulCenterPosition
    }
}

