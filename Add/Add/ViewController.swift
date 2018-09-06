//
//  ViewController.swift
//  Add
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

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    @IBAction func add(_ sender: Any) {
        let a=Double(t1.text!)
        let b=Double(t2.text!)
        
        let c=Double(a!+b!)
        
        result.text="The result is \(c)"
        
    }
}

