import Foundation

/*:
 程式碼的部分在下面
 */

func printTraingle(layer : Int) {
    for i in stride(from: 0, to: layer, by: 1) {
        var st = "" //設例一個暫存的string，來存這一輪結果
        for j in 0...i { //看這輪數字幾就加上幾次的星號
            st += "＊"
        }
        print(st) //印出這輪的結果
    }

}

printTraingle(layer: 5)  //題目需求叫用這個func



