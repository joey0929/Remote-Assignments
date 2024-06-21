
/*:
 

#1
 
    birthday() will return  String Type
    payment()  will return Double Type
 
 ---
#2.
 
     #變數前 加上底線 是為了叫用時前面不用再加上a: b:方便叫用
     func multiply(_ a :Int , _ b :Int = 10) {
         print(a * b)

     }
    
    Ex: multiply(10,10)
     
 ---
#3.
 
 
    parameter name 是內部名字，在定義function時，預設所用的參數名稱會與argument label相同
    可加上可忽略的外部名 讓它在叫用function時 可使用與parameter name不同的名字進行叫用
    
 
    ex:
    func f1(a:Int , b:Int) {  裡面的a 和 b 都是 parameter name
    print("\(a) and  \(b)")
    }
    
    
    argument label 是在呼叫function時，包含在function call 的參數名字 
    ex:
 
    f1(a:any Int value,b:any Int value) a 和 b 都是 argument label
    
    在叫用function 時可省略 在 宣告func 時在變數前加上底線就可以了 
    ex : 
 
    func f1(_ a :Int , _ b :Int) { ...}

    call it f1(any Int value,any Int value)
                                                                    
    主要是為了增加呼叫時的可讀性才有argument label的

---

#4.
   
     
     func greet(person name: String) {
         print("Hello, \(name)")
     }


     greet(person: "Luke")

 
---

 
*/


