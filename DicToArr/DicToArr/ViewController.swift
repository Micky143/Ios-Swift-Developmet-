//
//  ViewController.swift
//  DicToArr
//
//  Created by Student on 02/08/18.
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


    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBOutlet weak var lb1: UILabel!
    
    @IBOutlet weak var lb2: UILabel!
    
    @IBAction func segact(_ sender: Any)
    {
        switch seg.selectedSegmentIndex
        {
        case 0:
            lb1.text = seg.titleForSegment(at: seg.selectedSegmentIndex)
        case 1:
            lb2.text = seg.titleForSegment(at: seg.selectedSegmentIndex)
        default:
            break
        }
    }
}

