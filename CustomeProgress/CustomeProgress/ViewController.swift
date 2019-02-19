//
//  ViewController.swift
//  CustomeProgress
//
//  Created by MAC on 19/02/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showLoader(_ sender: UIButton) {
        CustomeLoader.instance.showLoader()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            CustomeLoader.instance.hideLoader()
        }
    }
    
}

