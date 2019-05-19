//
//  ViewController.swift
//  activityAnimation
//
//  Created by Elisabeth Jessica Valencia on 17/05/19.
//  Copyright © 2019 Elisabeth Jessica Valencia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // cara bikin supaya bulat => setengah dari lebar kotaknya
        circle.layer.cornerRadius = circle.frame.width/2
        
        
        let tapGesture = UITapGestureRecognizer (target: self, action: #selector(moveAnimation))
        
        circle.addGestureRecognizer(tapGesture)
    }

    @objc func moveAnimation(){
        UIView.animate(withDuration: 0.4, delay: 0.2, options: .curveEaseOut, animations: {
            self.didChangePos()
        }) { (nil) in
            
        }
    }
    
    func didChangePos() {
        
        // CENTER
        let randomX = Int.random(in: 1...300)
        let randomY = Int.random(in: 1...400)
        
        circle.center = CGPoint(x: randomX, y: randomY)
        
        //ganti opacity ALPHA
        let alpha = Float.random(in: 0.5...1)
        circle.alpha = CGFloat(alpha)
        
        // ganti warna BACKGROUND COLOR
        let colors:[UIColor] = [.blue, .black, .red, .yellow, .green, .brown]
        // bisa pakai COLOR LITERAL, muncul box trs double click
        
        let randomInt = Int.random(in: 0...5)
        circle.backgroundColor = colors[randomInt]
        
    }

}

