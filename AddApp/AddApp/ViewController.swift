//
//  ViewController.swift
//  AddApp
//
//  Created by Student on 10/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var l: UILabel!
    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    @IBAction func b1(_ sender: Any) {
        let f=Double(t1.text!)
        let s=Double(t2.text!)
        
        let o=Double(f!+s!)
        
        l.text="Result is \(o)"
        
        
        
    }
}

