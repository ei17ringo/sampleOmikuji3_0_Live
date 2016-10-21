//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Eriko Ichinohe on 2016/10/21.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapUranai(_ sender: UIButton) {
        //どれかひとつをランダムに選ぶ
        var r = Int(arc4random()) % omikuji.count
        
        //おみくじ結果のアラートを作る
        var alertController = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .alert)
        
        //OKぼたん追加
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.kekka()}))
        
        //アラートを表示
        present(alertController, animated: true, completion: nil)
        
    }
    
    func kekka(){
        //ここに画像表示の処理を追加
    
        print("OKがおされました")
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

