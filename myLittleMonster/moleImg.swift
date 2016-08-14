
//
//  selectingPet.swift
//  myLittleMonster
//
//  Created by user on 11/08/2016.
//  Copyright © 2016 David Kennedy. All rights reserved.
//

import Foundation
import UIKit

class MoleImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playMoleIdleAnimation()

    }
    
    func playMoleIdleAnimation() {
        
        self.image = UIImage(named: "moleIdle1.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "moleIdle\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playMoleUpAnimation() {
        
        self.image = UIImage(named: "appear6.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 6 ; x++ {
            let img = UIImage(named: "appear\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        
    }
    
    func playMoleDeadAnimation() {
        
        self.image = UIImage(named: "hide6.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 6; x++ {
            let img = UIImage(named: "hide\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        
    }
 
}


