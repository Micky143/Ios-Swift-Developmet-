//
//  SecondViewController.swift
//  project3
//
//  Created by Student on 16/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondnametv: UITextField!
    @IBOutlet weak var secondregtv: UITextField!
    
    @IBOutlet weak var secondstreamtv: UITextField!
    @IBOutlet weak var secondrolltv: UITextField!
    var name = ""
    var reg = ""
    var stream = ""
    var roll = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        secondnametv.text = name
        secondregtv.text = reg
        secondstreamtv.text = stream
        secondrolltv.text = roll
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
