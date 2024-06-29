//
//  ViewController.swift
//  week2-Assignment
//
//  Created by 池昀哲 on 2024/6/28.
//

import UIKit

class ViewController: UIViewController {

    
    
    var r1 = 0  //儲存random 1 來改變句子用的
    var r2 = 0 //儲存random 2 來改變顏色用的
    var r1s = "" //建立一個string 來代表輪到的句子
    var r2s : [UIColor] = [.orange, .gray ,.red , .blue , .yellow , .green ,.purple]  //設定一個Array來存[]七個顏色下去輪
    
    @IBOutlet weak var background: UIImageView!  //background image 去做連結
    @IBOutlet weak var changeContent: UILabel!   //跟label做連結
    
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
    ] //用來存string的Array
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        r1s = text[r1]  //測試用
//        print(r1,"",r1s)
//        print(r1s)
//        
    }


    
    @IBAction func changeColorandSen(_ sender: UIButton) {
        r1 = Int.random(in: 0...6)  //產生r1,r2兩個亂數 從 0 ~ 6 是因為array的index從0開始，結尾才不是7
        r2 = Int.random(in: 0...6)
        r1s = text[r1]
        changeContent.text = r1s  //變更對應的句子
        background.backgroundColor = r2s[r2]  //變更背景顏色
        
    }
    
   

    
}

