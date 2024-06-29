
/*:
    
#1  
 
 
     enum Gender {
         case male
         case female
         case undefined
     }


     class Animal {
         
         var gender : Gender   //題目要求的屬性gender,type Gender
         
         init( gender : Gender) {  //建立這個class的instace的時候，對它的屬性(property)進行初始化，這邊為gender
             self.gender = gender
         }

         func eat() {   //題目要求的method(function) to print
             print("I eat everything!")
         }
         

        }


     let a = Animal(gender: .male)  //嘗試建立這個class的instance 並用male 作為範例，生成一個物件去做測試
     //未加上_ 的創建var a = Animal(gender: .male)
     a.eat()  //call the eat() method
     
     
 
#2
 
 
 
     在練習swift的繼承時，由於以前有學過其他的程式語言，這樣的繼承寫法其實蠻類似的，意外的不是很難理解～
 
     class Elephant : Animal {
         override func eat() {  //繼承Animal 這個class 的屬性與method 並以overide改寫Animal繼承來的function ，以達成題目目的。下方另外兩種動物class同理
             print("I eat grass.")
         }
     }

     class Tiger : Animal {
         override func eat() {
             print("I eat meat.")
         }
     }


     class Horse : Animal {
         override func eat() {
             print("I eat carrot.")
         }
     }

     //let e = Elephant(gender: .male)   //分別呼叫測試看看印出的使否與題目所需相同
     //e.eat()
     //let t = Tiger(gender: .male)
     //t.eat()
     //let h = Horse(gender: .male)
     //h.eat()
 
 
#3
 
 
     class Zoo {
         
         var weeklyHot: Animal      //可以從下方zoo的那行可以看出，Zoo所要接收的型別為Animal，因為Tiger它是一個class的型別加上是繼承Animal的
         
         init (weeklyHot: Animal) {
             self.weeklyHot = weeklyHot  //這個class裡只有一個屬性，將接收的weeklyHot的這個實體賦予給這個class本身(self.weeklyHot)
                    }
         
        }

     let zoo = Zoo(weeklyHot: Tiger(gender: .female))     //從這邊可以發現有個錯誤是，缺少Tiger這個實體的參數，所以隨機挑一個性別放進去

 
     let tiger = Tiger(gender: .male)  // 並在裡面的gender參數都是隨機選用的，下方其他動物同理
     zoo.weeklyHot = tiger

     let elephant = Elephant(gender: .female)
     zoo.weeklyHot = elephant

     let horse = Horse(gender: .undefined)
     zoo.weeklyHot = horse
 
 
 
 
 
#4
 
    
    instance 是在struct 與 class定義完成後，所創建出来的物件
 
    
    initilizer:
                會在創建物件(object)時，為struct 與 class 會對其中有的屬性進行初始化，在一個class中
                可以設定多個init()，程式執行時會根據參數傳遞的不同而去找到對應的init()~
 
 
            Ex: init() {
                the propertie that you want to initialize(進行初始化的code) here
                }
 
 
 
#5
 
    
    比較明顯的差異在於 struct 是valuetype， class 是 reference-type
    使用class時，可以使用繼承(inherence)，struct不行，在使用的過程中，同源class的記憶體位置會是相同的，在進行變動數值時，相同class的instance都會被影響，
    而struct 的話則不會，彼此獨立。
 
    一般在選用時，通常會使用structure來進行使用，原因是在維護或除錯時比class容易，
    並在必要時使用class。
 
    
 
#6
 
 
    reference type:
    
    Ex : 如 Functions,Closures,Class
    
    class 用的型別就屬於reference type，
    當設立好一個class的物件去賦予給另一個物件時，所佔用的記憶體位置會是相同的
 
    value type:
 
    Ex: 如 Int,Double,String,Array...等皆屬於
    
    struct 用的型別就屬於value type
 
 #7
 
 
    instance method:
    
    當class定義完成後，建立其物件(object)時，可以叫用的function(method)就稱為instance method
 
    type method:
 
    例如在class內定義func時，前面加上static，可以在被繼承時，不能被其他子類用overide去改寫
 
 #8
 
 
    self in instance method
    
    在instance method中所代表的為，在一個class創立出来的object實體本身
 
 
    self in type method
    
    
    ？？？ 這個我真的不知道怎麼解釋～
    
 
*/







