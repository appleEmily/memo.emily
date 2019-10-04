//
//  listViewController.swift
//  memo.emily
//
//  Created by 野崎絵未里 on 2019/10/05.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class listViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var recievedText:String!
    
    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = recievedText
        print(cell)
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //dataViewを切り離す
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
}
