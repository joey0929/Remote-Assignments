/*:
 

#1
 
     let lottoNumbers = [10, 9, 8, 7, 6, 5]

     for i in 3 ... lottoNumbers.count - 1 {
         print(lottoNumbers[i])
     }
    
 ---
 
#2.
     
     將個loop 的範圍做反向，進行反向遍歷
 
     for i in (0 ... lottoNumbers.count - 1).reversed() {
         print(lottoNumbers[i])
     }
    
     Ans :結果與題目中的圖片一相同
    
     
     將此array中的元素進行餘數判斷，看是否能被 2 整除，達成條件再印出
     for i in 0 ... lottoNumbers.count - 1  {
         if(lottoNumbers[i] % 2 == 0) {
             print(lottoNumbers[i])
         }
     }
        
     Ans :結果與題目中的圖片二相同
    
 ---
#3.
 
     先設定它的最大範圍i，接著每次遍歷都減1，達成目的。
    
     var i = lottoNumbers.count - 1
 
     lottoNumbers.reversed()
     while i >= 0 {
         print(lottoNumbers[i])
         i -= 1
     }
 
     Ans :結果與題目中的圖片一相同
---
#4.
    
     先設定初始值i = 0 將此array中的元素進行餘數判斷，看是否能被 2 整除，達成條件再印出
     
     var i = 0

     while i < lottoNumbers.count {
         if (lottoNumbers[i] % 2 == 0) {
             print(lottoNumbers[i])
         }
         i += 1
     }

     Ans :結果與題目中的圖片二相同
---
#5.

    repeat-while跟其他程式語言的do-while 有點像，差別在於while會在一開始檢查條件有滿足的狀況下，才會執行迴圈內容，條件有符合才會繼續執行
    而repeat-while，是會先執行一次迴圈裡的程式再看有沒有符合條件，才繼續執行迴圈內容
 
 ---
#6
 
 
     var isRaining = true

     if (isRaining) {
         print("It's raining, I don't want to work today.")
     }
     else {
         print("Although it's sunny , I still don't want to work today.")
     }

 ---
#7
 
     var jobLevel = 4 //可由這邊更改數值，可印出不同工作身分
     if jobLevel > 0 && jobLevel < 5 {
         
         switch jobLevel {
         case 1 :
             print("Member")
         case 2:
             print("Team Leader")
         case 3:
             print("Manager")
         case 4:
             print("Director")

         default:
             print()
         }
         
     }
     else {
         print("We don't have this job.")
     }

 ---
 
*/

