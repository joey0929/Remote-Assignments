//
//  ViewController.swift
//  week3
//
//  Created by 池昀哲 on 2024/7/1.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var accountText: UITextField!
    
    
    @IBOutlet weak var passText: UITextField!
    
    
    @IBOutlet weak var checkText: UITextField!
    
    
    @IBOutlet weak var checkLabel: UILabel!
    
    
    let account: String = "appworks_school"  //正確的帳號
    let password :String = "1234"  //正確的密碼
    var flag = 0  //確認在哪個狀態用

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 設置非選中狀態下的文字顏色
   

        checkText.isUserInteractionEnabled = false  //預設將checkTextView關閉
        checkText.backgroundColor = .gray   //並將背景顏色改灰
        checkLabel.textColor = .placeholderText //label 名稱也是
        flag = 0  //初始化flag
        
    }

    
    @IBAction func selectControl(_ sender: UISegmentedControl) {
        
        
        
        if sender.selectedSegmentIndex == 1 {   //在sign up狀態時 flag 設為 1
            checkText.isUserInteractionEnabled = true
            checkText.backgroundColor = .white
            checkLabel.textColor = .black
            flag = 1
        }else {
            checkText.text = ""  //在log in 狀態時，flag 設為 0
            checkText.isUserInteractionEnabled = false //並將check的這格disable掉
            checkText.backgroundColor = .gray  //背景顏色與label顏色改變
            checkLabel.textColor = .placeholderText
            flag = 0
        }
        
        
    }
    
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        var input_account = ""  //用於儲存輸入的 account , password , 確認密碼
        var input_pass = ""
        var input_check = ""
        
        input_account = accountText.text!  //將textField的資料存入剛剛建立的變數中
        input_pass = passText.text!
        input_check = checkText.text!
        
        func alertFunc(_ message: String) {  //將alert的程式碼 用func包起來，減少重複的程式碼的使用
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)

            let action = UIAlertAction(title: "OK", style: .default, handler: { action in

            })
            
            alert.addAction(action)
            present(alert,animated: true)
        }
        
        
        
        var error_message = "" // 儲存錯誤訊息
        

        if input_account == "" {  //檢查account是否為空值
            error_message = "Account should not empty."
            alertFunc(error_message)
        }
        if input_pass  == "" {  //檢查password是否為空值
            error_message = "Password should not empty."
            alertFunc(error_message)
        }
        if input_check  == ""  && flag == 1 { //檢查check是否為空值
            error_message = "Check should not empty."
            alertFunc(error_message)
            
        }
        if input_pass != input_check && flag == 1 { //檢查是否在sign in狀態時數入是否錯誤
            error_message = "Sign up fail"
            alertFunc(error_message)
        }
        if (input_account != account || input_pass != password) && flag == 0  { //檢查是否在log in 狀態時，是否有錯誤輸入
            error_message = "Login fail"
            alertFunc(error_message)
        }

        
    }
    
    
}

