//
//  ViewController.swift
//  mariokart
//
//  Created by user160656 on 2/17/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var kart0: UIImageView!
    @IBOutlet weak var kart1: UIImageView!
    @IBOutlet weak var kart2: UIImageView!
    
    var startingPointKartView0 = CGPoint()
    var startingPointKartView1 = CGPoint()
    var startingPointKartView2 = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startingPointKartView0 = kart0.center
        startingPointKartView1 = kart1.center
        startingPointKartView2 = kart2.center
    }
    
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        UIView.animate(withDuration: 0.8) {
            self.kart0.center = self.startingPointKartView0
            self.kart1.center = self.startingPointKartView1
            self.kart2.center = self.startingPointKartView2
            self.kart0.transform = CGAffineTransform.identity
            self.kart1.transform = CGAffineTransform.identity
            self.kart2.transform = CGAffineTransform.identity
        }
    }
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        kartView.center = location
    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        UIView.animate(withDuration: 0.8) {
            kartView.center.x += 400
        }
    }
}

