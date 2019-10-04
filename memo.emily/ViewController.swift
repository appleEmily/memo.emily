//
//  ViewController.swift
//  memo.emily
//
//  Created by 野崎絵未里 on 2019/10/04.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func next(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            
            let nextView = segue.destination as! listViewController
            nextView.recievedText = text.text!
        }
    }
    
    

}

