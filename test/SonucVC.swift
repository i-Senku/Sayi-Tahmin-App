//
//  SonucVC.swift
//  test
//
//  Created by ercan on 1.12.2019.
//  Copyright © 2019 ercan. All rights reserved.
//

import UIKit

class SonucVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var status: UILabel!
    
    var sonuc:String?
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.layer.cornerRadius = 20
        
        if let text = sonuc {
            status.text = text
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        if sonuc == "Kazandınız" {
            image.image = UIImage(named: "smile")
            
        }else{
            image.image = UIImage(named: "sad")
        }
     
    }
    
    @IBAction func again(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
