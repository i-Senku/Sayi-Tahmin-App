//
//  ViewController.swift
//  test
//
//  Created by ercan on 23.11.2019.
//  Copyright © 2019 ercan. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 25.0
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
    }

    @IBAction func start(_ sender: Any) {
        
    }
    
}

