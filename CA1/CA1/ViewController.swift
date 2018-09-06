//
//  ViewController.swift
//  CA1
//
//  Created by Student on 21/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        s1 = V1().view
        s2 = V2().view
        s3 = V3().view
        s4 = V4().view
        s5 = V5().view
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var s1:UIView!
    var s2:UIView!
    var s3:UIView!
    var s4:UIView!
    var s5:UIView!
    var count = 0
    
    @IBOutlet weak var imgview: UIView!
    
    @IBAction func nextbtn(_ sender: Any) {
        if count <= 5
        {
            count = count + 1
            switch count {
            case 1:
                imgview.addSubview(s1)
            case 2:
                imgview.addSubview(s2)
            case 3:
                imgview.addSubview(s3)
            case 4:
                imgview.addSubview(s4)
            case 5:
                imgview.addSubview(s5)
            default:
                break
            }
        }
        count = 5
    
        
    }
    
    @IBAction func prevbtn(_ sender: Any) {
        if count >   0 && count <= 5
        {
            count = count - 1
            switch count {
            case 1:
                imgview.addSubview(s1)
            case 2:
                imgview.addSubview(s2)
            case 3:
                imgview.addSubview(s3)
            case 4:
                imgview.addSubview(s4)
            case 5:
                imgview.addSubview(s5)
            default:
                break
            }
        }
        count = 1
        
    }
    

}

