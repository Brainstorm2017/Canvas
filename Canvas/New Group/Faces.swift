//
//  Faces.swift
//  Canvas
//
//  Created by user144166 on 11/22/18.
//  Copyright © 2018 Codepath. All rights reserved.
//

import UIKit

class Faces: UIImageView {
    
    var newlyCreatedFace: UIImageView!
    
    .began
    
    
    var imageView = sender.view as! UIImageView
    
    newlyCreatedFace = UIImageView(image: imageView.image)
    
    view.addSubview(newlyCreatedFace)
    
    newlyCreatedFace.center = imageView.center
    
    newlyCreatedFace.center.y += trayView.frame.origin.y    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
