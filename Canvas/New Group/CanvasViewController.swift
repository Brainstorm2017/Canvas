//
//  CanvasViewController.swift
//  Canvas
//
//  Created by user144166 on 11/14/18.
//  Copyright © 2018 Codepath. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {

    @IBOutlet weak var trayView: UIView!
    swift var trayOriginalCenter: CGPoint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trayDownOffset = 160
        trayUp = trayView.center // The initial position of the tray
        trayDown = CGPoint(x: trayView.center.x ,y: trayView.center.y + trayDownOffset)
    }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func didPanTray(_ sender: UIPanGestureRecognizer)
    
    let translation = sender.translation(in: view)
    var velocity = sender.velocity(in: view)
    
    if sender.state == .began {
    print("Gesture began")
    trayOriginalCenter = trayView.center
    } else if sender.state == .changed {
    print("Gesture is changing")
    trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
    } else if sender.state == .ended {
    print("Gesture ended")
    if velocity.y > 0 {
    UIView.animate(withDuration: 0.4) {
    self.trayView.center = self.trayDown
    }
    } else {
    UIView.animate(withDuration: 0.4) {
    self.trayView.center = self.trayUp
    }
    }
    
    }


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }



