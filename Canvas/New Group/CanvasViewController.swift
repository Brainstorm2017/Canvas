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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didPanTray(_ sender: UIPanGestureRecognizer) {_ = sender.translation(in: view)    }
    

    func didPan(sender: UIPanGestureRecognizer) {
        _ = sender.location(in: view)
        _ = sender.velocity(in: view)
        _ = sender.translation(in: view)
        
        if sender.state == .began {
            print("Gesture began")
        } else if sender.state == .changed {
            print("Gesture is changing")
        } else if sender.state == .ended {
            print("Gesture ended")
        }
    }
    
    let trayDownOffset: CGFloat!
    var trayUp: CGPoint!
    var trayDown: CGPoint!
    
    trayDownOffset = 160
    trayUp = trayView.center // The initial position of the tray
    trayDown = CGPoint(x: trayView.center.x ,y: trayView.center.y + trayDownOffset)    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
