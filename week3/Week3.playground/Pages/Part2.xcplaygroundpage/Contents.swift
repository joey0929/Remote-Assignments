import UIKit



var isOddorNot = { (number : Int) -> Bool in  //將這個closure傳入給isOddorNot這個變數，並有一個傳入的參數number
    if (number % 2 != 0) {  //利用餘數去判斷是否為奇數
        return true
    }else {
        return false
    }
}



print(isOddorNot(3))  //測試3是否為奇數

print(isOddorNot(4))  //測試4是否為奇數
