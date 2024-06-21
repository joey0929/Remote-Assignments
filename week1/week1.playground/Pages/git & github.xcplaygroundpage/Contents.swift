/*:
---
 a. git status  ：
 
    可以查看目前檔案的git狀態 可查看是否有檔案未追蹤(unracked) 
    比如可以再想看在哪個分支之類的狀態，還能看是否有檔案的狀態，是否有加入暫存區與commit
 ---
 
 b. git diff ：
 
    可以比對目前檔案的內容與先前版本做比較，可藉由此指令看出內容的更動
    
    可用在兩個commit間比較內容更動了哪些部分
 
 ---
 c. git add  ： 
 
    可以將指定的檔案加入git暫存區，可改變檔案的追蹤狀態，
 
    也可使用add . 一次將所有要新增的檔案加入 省時又快速，接著就可以commit
 ---
 d. git reset ： 
    
    可以將狀態還原到指定的還原點(Id)，並捨棄掉該還原點之後的記錄，且為不可逆的操作，所以要小心使用。
---
 e. git commit ：
 
    可將暫存區中的內容推送到reop中
 
    預設輸入會進入vim編輯器，並可加入對該版本的描述 ，可利用 commit -m 不啟動文字編譯模式來進行提交訊息
    
 ---
 f. git log  ： 
 
    可列出詳細的commit記錄， commit ID 、 author 、建立時間、版本名稱
 
    並可以在git log 時加上 --oneline 可以以更為簡潔的瀏覽commit的記錄
    
 ---
 g. git branch ： 
 
    可以查看目前的所有分支
 
    在進入分支的操作前可以先用git brach 來看目前有哪些branch，再做接下來的merge或刪除分支的操作
 
 ---
 h. git merge ： 
 
    可以用於合併分支
 
    當要進行merge時，在合併其他分支前需要注意到是否有切回主支(master)，以免發生不必要的狀況
    
 ---
 i. git push [ repo_name ] [ branch_name ] ：
 
    可以將本地的branch 推送到遠端的資料庫
 ---
 j. git remote ：
 
    會列出目前已配置的遠端資料庫， 例如可使用 git remote -v 查看目前配置的遠端資料庫與它的url
 ---
 k. fork  ：
     
 
     可以透過fork，將別人的repo建立一份到自己的的github儲存庫，做了一些改動或修改一些文件後，可以pull request回別人的專案，需要他的permission~
     
     可用於權限控管，假如使用個人帳戶，授權給人(Collaborators)，就能自由push跟pull專案的原始碼，但不能夠在設定更細節的儲存庫權限，所以
     當大型團隊在實作大專案時，可能會被人不小心刪除分支、或任意進行推送，造成很大的問題，在github組織的權限下，可以更細分多種權限，
     可減少不必要的麻煩。更能有效掌控的開發環境。
 
 
---
 l. (Advanced) git rebase ：
    
     可以用於整理分支，讓整體的graph的圖更乾淨
     
     ex git rebase <branch name>
     假設在b1 分支上做rebase b2 ，則b1會被接在b2上方
 
                
  ---
 
 m. (Advanced) git cherry-pick ：
    
    在git裡面，如果發現到有人分支做的不錯，但又不想要全部的commit，就可以利用這個指令，抓取其分支中的其中幾個
    commit整合到主支(master)，在分支開發時會蠻好用的。
                
 ---
 n. (Advanced) git reflog ：
 
    在使用git時可能會在merge或pull時遇到conflict的情況，或是意外還原到不是目標的還原點  
 
    在發生意外的情況，可以使用git reflog 來看所有的版本記錄，可以從中找到目標還原點，進行還原，救回分支。
 

 ---
 o. (Advanced) git tag ：
        
    可用於commit上，會指向一個commit，在commit上加上標籤，與分支不同的地方在於，
    分支會隨commit移動，而tag會固定在標定的commit上不會變動。
    
    又分為 lightweight tag and annotated tag
    差異在於 annotated tag會比lightweight tag 更多一點資訊，資料會多一點
                
 ---
 
 Please describe how to establish a GitHub repo and how to upload the local projects
 to GitHub. Try to explain your answers with as much detail as possible.:
 
 
 1. 先在本地端先建立一個資料夾並 開啟終端機，cd進入資料夾後，並輸入 git init，在本地產生.git資料夾
 
 2. 進到githun網站並進入Dashboard ，接著可以看到左上方有個創立新的Repository 的按鈕new一個出來，並可以自訂資料庫名稱(Repository name)，
    並可設定隱私權的狀態(Public or Private)，接著按下Create repository 就完成githib的基本建置
 
 3. 接著要將剛設定好的github儲存庫與本地端的資料夾做連結，使用它所給予的指令下去操作進行連接，
    1. git remote add origin 給的儲存庫網址  ：這行用於連接本地和 剛剛建立的儲存庫
    2. git branch -M main  ：將原來分支名稱 master 改為 main
    3. git push -u origin main : 將位於main(本地資料庫)的資料 推送到雲端(剛剛建立的雲端儲存庫)

 最後可以在github的頁面上點擊Code的欄位看到與本地端有著相同的資料，皆著就可以做想要做的操作了
 
 */





