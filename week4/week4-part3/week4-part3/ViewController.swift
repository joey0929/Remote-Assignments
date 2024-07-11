//
//  ViewController.swift
//  week4-part3
//
//  Created by 池昀哲 on 2024/7/10.
//

import UIKit

class ViewController: UIViewController {

    struct Station: Codable {  //設立一個Struct 並遵循codable的協定，
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    
    @IBOutlet weak var StationIDLabel: UILabel!  //基本拉了三個label
    @IBOutlet weak var StationNameLabel: UILabel!
    @IBOutlet weak var AddressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printAndUpdateURLData()
    }

    func printAndUpdateURLData() {  //定義使用URLSession的function

        let configure = URLSessionConfiguration.default //設立configuration
        let session = URLSession.init(configuration: configure) //建立session
        
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")! //設定url
        
        let task = session.dataTask(with: url) {  //建立task
            (data,response,error) in
            guard let data = data, error == nil else {  //確認得到的data不為空值，跟是否有錯誤的狀態，沒特別說明要檢查連線狀態(response)就先略過
                return
            }
            //以下就可以對session中的data做處理
            do {
                let stationData = try JSONDecoder().decode(Station.self, from: data)  //因為是一個json的檔案decode後轉為Station的型態，讓我們更好取用跟用於更新label
                DispatchQueue.main.async {   //UILabel.text must be used from main thread only 沒有放在這裡面會有這個線程的問題～
                                            //經過查詢後，要更新UI的東西一定要在main這個主線程中，由於使用到URLSession時，預設會開另一條Queue去做，所以在
                                            //更新UI時要切回這個主線程來進行更新，不然會有編譯上的錯誤。
                    self.StationIDLabel.text = stationData.stationID       //更新UI Label
                    self.StationNameLabel.text = stationData.stationName
                    self.AddressLabel.text = stationData.stationAddress
                    
                }
                print(stationData)  //確認使否有拿到資料
                
            } catch {
                print(error)
            }
            
        }
        
        task.resume()  //resume它後就能成功執行
        
    }
    
    

}

