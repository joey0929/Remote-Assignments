
import Foundation



/*:
 
 closure 以最直觀的方式來看的話就是，沒有名稱的function，
 與func的差異還有 func的參數跟回傳型別是在()裡面，
 而closure是在{}裡面
 
 closure要執行的程式碼就寫在in後面
 
 
 如何去執行一個closure，可以將它帶入給一個變數再去叫用它程式碼在下面
 
 */

var a = {() -> String in   //我定義一個closure給一個變數a，不傳入任何參數，回傳型別為String 定義的程式碼寫在in後面
    return "coding is fun!?" //回傳的文字
}

print(a()) //像func一樣將它叫用出來  




