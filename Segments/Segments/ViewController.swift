//
//  ViewController.swift
//  Segments
//
//  Created by Student on 07/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Ss1:UIView!
    var Ss2:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        Ss1 = v().view
        Ss2 = v2().view
        
        cusView.addSubview(Ss1)
        cusView.addSubview(Ss2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var action1: UISegmentedControl!
    
    @IBOutlet weak var cusView: UIView!
    
    @IBAction func submit(_ sender: Any)
    {
        switch action1.selectedSegmentIndex{
            
        case 0:
            cusView.bringSubview(toFront: Ss1)
        case 1:
            cusView.bringSubview(toFront: Ss2)
        default:
            print("error")
    }
    
}

}
