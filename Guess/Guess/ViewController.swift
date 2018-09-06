//
//  ViewController.swift
//  Guess
//
//  Created by Student on 24/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        l1.isHidden=true
        l2.isHidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBAction func b1(_ sender: Any) {
        l1.isHidden=false
        l2.isHidden=false
        
        let v=Double(t1.text!)
        let r=Double(arc4random()%10)
        
        l2.text="The answer is \(r), you guessed \(v)."
        if v==r{
            
            l1.text="You won"
        }
        else {
            
            l1.text="sorry, try again....."
        }
    }
    
}

