//
//  ViewController.swift
//  customSlider
//
//  Created by Masaki Horimoto on 2016/08/18.
//  Copyright © 2016年 Masaki Horimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setCustomSlider()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setCustomSlider() {

        //スライダー初期化
        mySlider.minimumValue = 0.0
        mySlider.maximumValue = 1.0
        mySlider.value = 0.5
        
        //スライダーのデザインをカスタマイズ
        let imageForThumb = UIImage(named: "slider_thumb.png")
        let imageMinBase = UIImage(named: "slider_left.png")
        let imageMaxBase = UIImage(named: "slider_right.png")
        let imageForMin = imageMinBase?.stretchableImageWithLeftCapWidth(4, topCapHeight: 0)
        let imageForMax = imageMaxBase?.stretchableImageWithLeftCapWidth(4, topCapHeight: 0)
 
        mySlider.setThumbImage(imageForThumb, forState: .Normal)
        mySlider.setThumbImage(imageForThumb, forState: .Highlighted)
        mySlider.setMinimumTrackImage(imageForMin, forState: .Normal)
        mySlider.setMaximumTrackImage(imageForMax, forState: .Normal)
        
    }


}

