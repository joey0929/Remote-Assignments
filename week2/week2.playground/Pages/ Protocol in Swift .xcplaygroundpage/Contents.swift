//: [Previous](@previous)

import Foundation


/*:
   
#1
 
     protocol PoliceMan {  //單純定義一個protocol
 
         func arrestCriminals()
         
     }
 
 
#2
    
     struct Person : PoliceMan {       //遵循這個PoliceMan的protocol
                                            
         func arrestCriminals() {      //這邊這個func 我是利用編譯器的fix下去做的，不然要將名稱改名也可
             print("I arrest someone~")
         }
         
         var name : String  // 因應題目要求設立一個String 來存
         
     }
 
 
 
 
 
#3
 
     protocol ToolMan {   //單純定義一個protocol
         
         func fixComputer()
         
     }
 
 
 
 
 
#4
 
    
     struct Person : PoliceMan {
         func arrestCriminals() {
             print("I arrest someone~")
         }
         
         var name : String
         var toolMan : ToolMan //因題目要求，增加一個為ToolMan形態的toolMan屬性
     }
 
 
 
 
#5
 
     
     struct Engineer : ToolMan {   //設立遵循這個ToolMan的protocol
         func fixComputer() {   //這邊這個func 我也是利用編譯器的fix下去做的
             print("I helped my classmate to fix her computer and didn't look foward for anything...")
         }
         
     }

 
 
 
 
 
#6
 
     //並設立一個遵循ToolMan的實體丟入Person裡 可以利用建立一個Engineer 来達成，不然
     //在利用Steven進行宣告時，toolMan的這項會無法運行出現because it has no accessible initializers的錯誤

     //let e1 = Engineer()
     //
     //
     //let Steven = Person(name: "Steven", toolMan: e1)
     //
     //Steven.arrestCriminals()  //測試 Person中的func
     //
     //Steven.toolMan.fixComputer()  //測試Engineer的func

 
 
*/







