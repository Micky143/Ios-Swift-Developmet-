//
//  ViewController.swift
//  WebServies
//
//  Created by Student on 04/10/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickopen: UIButton!
    @IBAction func clikopen(_ sender: Any)
    {
        if let url = URL(string:"https://www.linkedin.com"),
        UIApplication.shared.canOpenURL(url)
        {
            UIApplication.shared.open(url,options: [:])
        }
        
    }
   
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

