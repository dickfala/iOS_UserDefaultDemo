//
//  ViewController.swift
//  RememberName
//
//  Created by cyy on 2018/2/24.
//  Copyright © 2018年 james chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(textField.text, forKey: "name")
        messageLabel.text = "已儲存"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String {
            
            textField.text = name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

