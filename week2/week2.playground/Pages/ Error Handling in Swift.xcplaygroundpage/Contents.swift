
import Foundation

/*:
   
 
#
 error handling
 
     enum GuessNumberGameError : Error { //這邊的Error 代表一個 protocol ，屬於swift偵錯的一種型別，所以要加上去
         case wrongNumber
     }



     class GuessNumberGame {
         var targetNumber = 10
         func guess(number: Int) throws {
             guard number == targetNumber else {    //當帶入的數字跟target number 不相同時，會傳一個wrongNumber的 error出來
                     throw GuessNumberGameError.wrongNumber
             }
             print("Guess the right number: \(targetNumber)")
             
         }
         
     }

     //Thrown expression type 'GuessNumberGameError' does not conform to 'Error'


     let a = GuessNumberGame()

     //嘗試利用do catch 進行除錯，看是否能抓到帶入錯誤數字的throw
     do {
     try a.guess(number: 20)  //因為func 有throws 所以在這邊呼叫func的話需要用上try加在function前面，並將題目要求的20帶入猜數字

     }
     catch  {                     //可從中抓到這個 GuessNumberGameError.wrongNumber error，單純使用catch的話會抓所有類型的錯誤，
     print("not correct number")  //但這邊因範例就只有一種所以就直接抓，也可以將GuessNumberGameError.wrongNumber 寫在 case旁
     }
 
 

*/



