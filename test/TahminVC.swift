//
//  TahminVC.swift
//  test
//
//  Created by ercan on 30.11.2019.
//  Copyright © 2019 ercan. All rights reserved.
//

import UIKit

class TahminVC: UIViewController {

    @IBOutlet weak var tahminButton: UIButton!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var number: UITextField!
    
    
    var toplam = 5
    var sayi = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count.text = String(toplam)
        
        tahminButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tahminButton.layer.cornerRadius = 15

    }
    
    @IBAction func tahminButton(_ sender: Any) {
        
        toplam -= 1
        count.text = String(toplam)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyBoard.instantiateViewController(identifier: "sonucPage") as! SonucVC
        
        if toplam == 0 {
            info.text = "Hakkın Tükendi Kaybettin"
            count.text = String(toplam)
            
            VC.sonuc = "Kaybettin"
            self.show(VC, sender: nil)
            
        }
        
        if let textNumber = number.text{
            
            
            if let intNumber = Int(textNumber){
                
                if intNumber > sayi {
                    
                    info.text = "Azalt :("
                    count.text = String(toplam)
                    
                    }else if intNumber < sayi{
                    
                    info.text = "Arttır :("
                    count.text = String(toplam)
                    
                    }else{
                    
                    VC.sonuc = "Kazandınız"
                    self.show(VC, sender: nil)
                    
                    }
                }else{
                    info.text = "Bir Sayı Giriniz"
                }
            
            }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear Çalıştı")
        toplam = 5
        count.text = String(toplam)
        number.text = nil
        sayi = Int.random(in: 1...100)
        print(sayi)
    }
}
