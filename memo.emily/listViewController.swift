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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = recievedText
       return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
