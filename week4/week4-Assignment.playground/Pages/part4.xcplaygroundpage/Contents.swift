import Foundation

func printPyramid(layers: Int) {     //由於要印出奇數的星星，所以 1 3 5 7 9...  可以推出 2n - 1 個 在 n 層時, 而需要加上的空白就用最長的那行減去目前這行的數量就可以達成目的
    var starNum : Int = 0
    var emptyNum : Int = 0
    var star : String = ""
    var empty : String = ""
    
    
    for i in 1...layers {   //需從一開始
        starNum = 2 * i - 1
        emptyNum = layers - i
        
        for j in stride(from: 0, to: starNum, by: 1) {  //如果是用 0...starNum這種迴圈的話會多印出一次星號 ，空白同裡
            star += "*"
        }
        for k in stride(from: 0, to: emptyNum, by: 1) { //加總要加上去的空白數量
            empty += " "
        }
       
        print(empty + star)
       
        
        star = "" //更新star 與 empty 避免重複使用相同結果
        empty = ""
    }
    
}


printPyramid(layers: 5)  //叫用此function 成功印出金字塔
