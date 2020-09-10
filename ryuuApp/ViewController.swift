//
//  ViewController.swift
//  ryuuApp
//
//  Created by 金子雅俊 on 2020/09/08.
//  Copyright © 2020 kaneko.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Hadou: UIImageView!
  
    //    動かす画像データの配列を作成
    var images : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // 画像を配列に格納
       while let attackImage = UIImage(named: "attak\(images.count+1)") {
           images.append(attackImage)
       }
    }
    
    
    @IBAction func attakButton(_ sender: Any) {
         // アニメーションの適用
                Hadou.animationImages = images
                // 1.5秒間隔
                Hadou.animationDuration = 1.5
                // 1回繰り返し
                Hadou.animationRepeatCount = 1
                // アニメーションを開始
                Hadou.startAnimating()
            }
            
        }


