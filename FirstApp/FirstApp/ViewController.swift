//
//  ViewController.swift
//  FirstApp
//
//  Created by Student on 14/08/18.
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

    @IBOutlet var lbl : UILabel!
    @IBOutlet var btn : UIButton!
    @IBOutlet var txt : UITextField!
    @IBAction func btnClick()
    {
        var a = lbl?.text!
        var b = txt.text!
        var c = btn.currentTitle
        
        lvl1.text = a
        tct.text = c
        btn.setTitle(a, for: UIControlState.normal)
    }
    
    
}
