//
//  CustomeLoader.swift
//  CustomeProgress
//
//  Created by MAC on 19/02/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation
import UIKit
import Lottie
class CustomeLoader: UIView {
    
    static let instance = CustomeLoader()
    
    var viewColor: UIColor = .black
    var setAlpha:CGFloat = 0.2
    
    lazy var transparentView: UIView = {
        let transparentView = UIView(frame: UIScreen.main.bounds)
        transparentView.backgroundColor = viewColor.withAlphaComponent(setAlpha)
        return transparentView
    }()
    
    lazy var animationView: LOTAnimationView = {
        let animationView:LOTAnimationView = LOTAnimationView(name: "animation")
        animationView.frame = CGRect(x: 0, y: 0, width: 150.0, height: 150.0)
        animationView.loopAnimation = true
        animationView.center = transparentView.center
        return animationView
    }()
    
    func showLoader() {
        self.addSubview(transparentView)
        self.transparentView.addSubview(animationView)
        self.transparentView.bringSubview(toFront: self.animationView)
        animationView.play()
        UIApplication.shared.keyWindow?.addSubview(transparentView)
    }
    
    func hideLoader(){
        animationView.pause()
        self.transparentView.removeFromSuperview()
    }
}
