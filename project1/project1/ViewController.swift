//
//  ViewController.swift
//  project1
//
//  Created by Student on 02/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        s1 = v1().view
        s2 = customviewViewController().view
        s3 = v3().view
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var s1:UIView!
    var s2:UIView!
    var s3:UIView!

    @IBAction func showmessage(_ sender: Any) {
        let alertController = UIAlertController(title:"Warnning!",message:"Virus attack",preferredStyle:UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title:"ok",style:UIAlertActionStyle.destructive,handler:nil))
        present(alertController,animated: true,completion: nil)
    }
    
    @IBOutlet weak var myview: UIView!
    @IBOutlet weak var seg: UISegmentedControl!
    
    
 
    
    @IBAction func segact(_ sender: Any) {
        switch seg.selectedSegmentIndex {
        case 0:
            myview.addSubview(s1)
        case 1:
            myview.addSubview(s2)
        case 2:
            myview.addSubview(s3)
        default:
            break;
        }
        
    
        
    }
}

