//
//  v1.swift
//  project1
//
//  Created by Student on 07/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class v1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nametv: UITextField!
    @IBOutlet weak var subjecttv: UITextField!
    
    @IBOutlet weak var regnotv: UITextField!
    var nm = "Tripuresh kumar pandey"
    var sub = "Cap935"
    var rgno = "11611076"
    
    
    @IBAction func view(_ sender: Any) {
        nametv.text = nm
        subjecttv.text = sub
        regnotv.text = rgno
    }
    @IBAction func reset(_ sender: Any) {
        nametv.text = ""
        subjecttv.text = ""
        regnotv.text = ""
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
