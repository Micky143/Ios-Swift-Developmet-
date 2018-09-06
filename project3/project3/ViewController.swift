//
//  ViewController.swift
//  project3
//
//  Created by Student on 16/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nametv: UITextField!
    
    @IBOutlet weak var regtv: UITextField!
    @IBOutlet weak var streamtv: UITextField!
    @IBOutlet weak var rolltv: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let x = segue.destination as? SecondViewController
        {
            x.name = nametv.text!
            x.reg = regtv.text!
            x.stream = streamtv.text!
            
            x.roll = rolltv.text!
        }
    }
}

