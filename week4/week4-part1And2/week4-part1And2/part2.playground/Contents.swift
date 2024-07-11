/*:
 
 reloadData(): 
 
 從蘋果的官方文件中，可以知道，呼叫這個func後，可以更新TableView從cell、section headers和footers還有index array之類的～，
 
 為了效能考量，會重整當下的欄位(row)並造成一些欄位縮減的效果。
 
 呼叫完這個func後：table view的delegate跟data source，可以有效重整(reload)要顯示的資料，並在文件中明確指出，要叫用時，盡量不要放在加入row或是刪除row的時候，
 
 特別是在animation block裡有使用beginUpdates() and endUpdates()時
 
 還有在hasUncommittedUpdates這個屬性是true時，也要避免叫用，避免在table在重新reload前，就將未更動的改動(uncommitted changes)給刪除掉了。
 
 跟我有印象在影片中好像有聽講師說過，這個指令蠻浪費記憶體跟在程式變大時要小心使用，要更新的部分比較少的話，可以使用reloadSection() 跟 reloadRow() 來進行畫面的更新。
 
 
*/






