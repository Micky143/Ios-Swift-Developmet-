//
//  ViewController.swift
//  viewctrl
//
//  Created by Student on 14/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textfiled: UITextField!
    
    @IBAction func enter(_ sender: Any)
    {
        if textfiled.text != ""
        {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondController = segue.destination as! SecondViewController
        secondController.myString = textfiled.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var but: UIButton!
    @IBAction func act(_ sender: Any)
    {
        performSegue(withIdentifier: "Show", sender:self)
    }
    
}

