
/*:
 
#1
 
     let 用於常數、適用於不會去變動的數值
     
     var 用於可改變數值的變數
 ---
#2.
 
    用var 來定義 pi 輸出的型別為Double
 
    用let 來定義 pi 輸出的型別一樣為Double
 
 
     var pi = 3.14
     print(type(of: pi))
     
     Ans: Double
 
     let pi = 3.14
     print(type(of: pi))
     
     Ans: Double
 ---
#3.

     let x :Int = 2
     let y :Int = 2

     let average =  (x + y)/2
     print(average)

     Ans: 2
 
---
#4.
 
    存入 record system前 ，可以用在average外先轉型態再存入
 
    Ex:
        Double(average)
     
     print(10/3)
     結果為 3 是Int 型別

     print(10.0/3.0)
     結果為 3.3333333333333335 為Double型別

---
#5.
     題目要求餘數
     let n1 = 10

     let n2 = 3

     let remainder = n1 % n2

     print(remainder)
    
     Ans: 1
 
 
 ---
#6
 
 
     var flag : Bool = true
     var inputString : String = "Hello world."
     let bitsInBite : Int = 8
     let averageScore : Double = 86.8
     
 
 
 ---
 
#7
 
     建立變數時會根據你賦予變數的類別，去判斷你的變數型別，可不用預先設定型別
     Ex:
        var x = 1
        
        可不必寫成這樣
        var x : Int = 1
 
 ---
#8
 
     可以很明顯的就看出來，因為在phoneNumber 這個變數被建立時，就已經定型別為Int了，所以不能將變數設定為String的型別


 ---
#9

     var salary = 22000
     salary += 28000  //equal to salary = salary + 28000

     print(salary)
---
#10
    
 
     var roger = 2486

     if (roger == 2486) { //這裡判斷式就是 Equality
         print("yes")
     }
 
     Ans :  ==
 
 ---
*/


