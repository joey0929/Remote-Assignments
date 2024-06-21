/*:
 

#1
 
 
    var myFriends: [String] = []
 
 
 ---
#2.

    myFriends += ["Ian", "Bomi", "Kevin"]
    print(myFriends)
    
    Ans: ["Ian", "Bomi", "Kevin"]
 ---
#3.
   
     myFriends.append("Michael")
     print(myFriends)
 
     Ans: ["Ian", "Bomi", "Kevin", "Michael"]
 ---
#4.
 
     先將kevin 暫存起來 再將他加回array的第一個位置(index 0)
     var bestfriend = myFriends[2]
     myFriends.remove(at: 2)
     myFriends.insert(bestfriend, at: 0)
     print(myFriends)
        
     Ans: ["Kevin", "Ian", "Bomi", "Michael"]
 ---
#5.
 
     for name in myFriends {
         print(name)
     }
---
#6
    
    會出現error，原因很簡單，因為目前array內只有四個元素，index是從0開始，最多只到3而已，  
    超出索引範圍，out of range!!

 
 ---
#7
 
    假設現在有個array
    test = [1,2,3,4]

    可使用test.first! 去得到這個array的第一個值，加上！的原因是因為.first會回傳option value 可用！去解它以得到這array的第一個數值

 ---
#8
 
 
     假設現在有個array跟剛剛一樣
     test = [1,2,3,4]
     
     可使用test.last! 去得到這個array的最後的值，加上！的原因是因為.last一樣會回傳option value
     可用！去解它以得到這array的最後一個數值
     
 ---
#9
 
     var myCountryNumber : [String : Int] = [:]
 
---
#10
 
 
     myCountryNumber["US"] = 1
     myCountryNumber["GB"] = 44
     myCountryNumber["JP"] = 81

     print(myCountryNumber)
     
     Ans:
     
     ["US": 1, "GB": 44, "JP": 81]
 
 ---
 
#11
 
     myCountryNumber["GB"] = 0
     print(myCountryNumber)

     Ans:
    
     ["US": 1, "GB": 0, "JP": 81]
 ---
#12
 
 
    Ex: 
 
    var DictName : [AnyType : AnyType] = [:]   //key : value
 
 
---
#13
    用上面的例子做範例
    
    
    myCountryNumber ["GB"] = nil //這行執行後，會將 GB ： 0 這組鍵值去除掉，達成題目目的
 
    print(myCountryNumber)
 
    Ans:
    
    ["US": 1, "JP": 81]
 ---
*/

