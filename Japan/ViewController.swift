//
//  ViewController.swift
//  Japan
//
//  Created by 海野恵凜那 on 2017/02/01.
//  Copyright © 2017年 erina.umino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    @IBOutlet weak var pin: UIImageView!
    var wid:[Int] = [280, 250, 260, 260, 245, 240, 245, 255, 245, 235, 235, 255, 235, 230, 215, 190, 175, 165, 215, 205, 180, 205, 185, 170, 170, 155, 150, 140, 160, 150, 120, 75, 125, 100, 65, 120, 120, 90, 95, 50, 35, 30, 50, 60, 60, 55, 10]
    var hei:[Int] = [200, 260, 275, 295, 260, 285, 315, 340, 320, 340, 350, 360, 360, 370, 330, 340, 330, 350, 370, 355, 360, 380, 375, 390, 370, 360, 375, 365, 390, 400, 360, 370, 370, 370, 385, 405, 395, 400, 420, 400, 395, 405, 420, 410, 425, 440, 490]
    
    var number:Int = 0
    let japan:[String] = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func action(){
        if number == 47 {
            number = 0
        }else{
            label.text = japan[number]
            UIView.animate(withDuration: 1) {
                self.pin.frame.origin = CGPoint(x: self.wid[self.number], y: self.hei[self.number])
            }
            number = number + 1
        }
        
    }


}

