//: [Previous](@previous)

import Foundation

/*:
 
 
#1
 
     enum Gasoline : String { //create a enum ,rawvalue設定為它們各自的抗震爆係數 92 , 95 ,98 ,型別為String，從題目敘述可知需這樣設定
         case oil92 = "92"
         case oil95 = "95"
         case oil98 = "98"
         case diesel = "disel" //柴油
         
         
         var price : Double{   //0625-oil price  根據不同種類的油類去回傳不同價格的變化
             switch self {  //這邊的self 表示這個enum產生的狀態是哪種情況～
             case .oil92:
                 return 29.1
             case .oil95:
                 return 30.6
             case .oil98:
                 return 32.6
             case .diesel:
                 return 26.4
             }
             
             
             
         }
         
         
         func getPrice(price: Gasoline) -> Double {  //這邊也是根據不同種類的油類去回傳不同價格的變化
             switch price {
             case .oil92:
                 return 29.1
             case .oil95:
                 return 30.6
             case .oil98:
                 return 32.6
             case .diesel:
                 return 26.4
                 
             }
             
         }
         
         
     }

     //let a = Gasoline.oil92.rawValue  //測試是否能取到oil92的rawvalue
     //print(a)
     //
     //let b = Gasoline.oil92.getPrice(price: .oil92) //測試 getvalue function
     //print(b)
     //
     //let c = Gasoline.diesel.price //測試price
     //print(c)


    #what is associated value?
 
    可視儲存需求，在定義enum時，case 中可在刮號中加入所需儲存型別，
    我從蘋果的文件看出，當已經設定為enum其中一個case的儲存類別後，再去
    改用enum的其他case的儲存類別是可以的，只能存在一種。
    Ex:
 
        enum   enumName {
            case ...:
                
            case caseName(AnyType,AmyType)    // like this line to declare
        
        
        }
 
 
 
#2
 
 
     class Pet {
         var name: String  //因為是要儲存name所以設為String型別
         
         init(name : String) {  //初始化
             self.name = name
         }
         
     }


     class People {
         
         var pet : Pet?   //因應題目要求，使用Pet option value型別
         
         init(pet: Pet?) { //初始化
             self.pet = pet
         }
         
     }


     //分別寫了兩個func去做測試，看看在if let 與 guard let 使否都能印出寵物名

     func testing (pet: Pet?) {
         guard let petrealexist = pet else {return} //假如為nil，則執行return 內的區塊，使用guard let時一定要加上else
         print("the pet's name: "+petrealexist.name)  //如題目所述，假如有pet不為nil則印出寵物的名字
     }


     func testingIflet (pet: Pet?) {
         if let petexist = pet {
             print("the pet's name: \(petexist.name)")  //如題目所述，假如有pet不為nil則印出寵物的名字
         }
         else {
             print("its nil")
         }
     }

     //並創建兩個Poeple的實體(b 和 d)去做題目要的要求印出名字

     //let a = Pet(name: "Roger")
     //let b = People(pet: a)
     //
     //testing(pet: b.pet)
     //
     //let c = Pet(name: "NL")
     //let d = People(pet: c)
     //
     //testingIflet(pet: d.pet)

*/


