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
    var trayOriginalCenter: CGPoint!
    var trayDownOffset: CGFloat!
    var trayUp: CGPoint!
    var trayDown: CGPoint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newlyCreatedFace.userInteractionEnabled = true
        trayDownOffset = 160
        trayUp = trayView.center // The initial position of the tray
        trayDown = CGPoint(x: trayView.center.x ,y: trayView.center.y + trayDownOffset)
    }
        // Do any additional setup after loading the view.
    
    

    @IBAction func didPanTray(_ sender: UIPanGestureRecognizer) {
    
    let translation = sender.translation(in: view)
    var velocity = sender.velocity(in: view)
    var newlyCreatedFace: UIImageView!
        
   var imageView = sender.view as! UIImageView
    newlyCreatedFace = UIImageView(image: imageView.image)
   view.addSubview(newlyCreatedFace)
        newlyCreatedFace.center = imageView.center
        newlyCreatedFace.center.y += trayView.frame.origin.y
        
        
        var newlyCreatedFaceOriginalCenter: CGPoint!
        
        
        if sender.state == .began {
            newlyCreatedFaceOriginalCenter = newlyCreatedFace.center
    print("Gesture began")
    trayOriginalCenter = trayView.center
    } else if sender.state == .changed {
            newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOriginalCenter.x + translation.x, y: newlyCreatedFaceOriginalCenter.y + translation.y);    print("Gesture is changing")
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
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


    @IBAction func didPanFace(_ sender: UIPanGestureRecognizer) {
    }
    
}

func didPaTray(sender: UIPanGestureRecognizer) {
    var location = sender.location(in: view)
    var velocity = sender.velocity(in: view)
    let translation = sender.translation(in: view)
    
    if sender.state == .began {
        newlyCreatedFace = sender.view as! UIImageView // to get the face that we panned on.
        newlyCreatedFaceOriginalCenter = newlyCreatedFace.center // so we can offset by translation later.        print("Gesture began")
    } else if sender.state == .changed {
        newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOriginalCenter.x + translation.x, y: newlyCreatedFaceOriginalCenter.y + translation.y)        print("Gesture is changing")
    } else if sender.state == .ended {
        print("Gesture ended")
    }
}
