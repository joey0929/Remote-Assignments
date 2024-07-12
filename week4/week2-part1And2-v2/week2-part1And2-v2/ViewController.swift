//
//  ViewController.swift
//  week2-part1And2-v2
//
//  Created by 池昀哲 on 2024/7/12.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate { //使用tableView 需要遵守的兩個protocol 要加進來

    

    
    @IBOutlet weak var tableView: UITableView! //拉一個tableView的iboutlet，並在storyboard中設定有單隔線
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self   //將delegate 設置給這個ViewController
        tableView.dataSource = self //將datasource 設置給這個ViewController
        
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {  //用於設置幾個section
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {  //用於一個section中要顯示幾個row
        switch section {  //就我在網路上找到的方法，可以直接利用switch 來切換，當section 0 時，顯示10個row，當 section 1時，顯示5個row
        case 0:
            return 10
        case 1:
            return 5
        default:  //因編譯器要求，需加上default，即可正常執行。
            return 0
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {  //用於顯示於row的cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) //要輸入在先前創立的cell的identifier
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row) "
        return cell
    }
    
    
    

}

