//
//  ViewController.swift
//  ImageChange
//
//  Created by Student on 05/09/18.
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

    var imageset:[UIImage]=[
        UIImage(named:"image.jpeg")!,
        UIImage(named:"imagetwo.jpeg")!,
        UIImage(named:"imagethree.jpeg")!,
        UIImage(named:"imagefour.jpeg")!
    ]
    @IBOutlet weak var im: UIImageView!
    @IBAction func change(_ sender: Any) {
        im.image=UIImage(named:"imagetwo.jpeg")
    }
    
    @IBAction func animation(_ sender: Any) {
        im.animationImages=imageset
        im.animationDuration=2
        im.startAnimating()
    }
    
    @IBAction func stop(_ sender: Any) {
        im.stopAnimating()
    }
    
    
    @IBAction func alert(_ sender: Any) {
        let okhandler={
            (action:UIAlertAction) -> Void in
            self.view.backgroundColor=UIColor.red
        }
        let alert=UIAlertController(title:"Warning",message:"Don't click again",preferredStyle:UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title:"ok" , style: .default, handler: okhandler))
        
        alert.addAction(UIAlertAction(title:"cancle" , style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func action(_ sender: Any)
    {
        let redHandler={
            (action:UIAlertAction) -> Void in
            self.view.backgroundColor=UIColor.red
        }
        let blueHandler={
            (action:UIAlertAction) -> Void in
            self.view.backgroundColor=UIColor.blue
        }
        let alert=UIAlertController(title:"colors",message:"select color",preferredStyle:UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title:"red" , style: .default, handler: redHandler))
        alert.addAction(UIAlertAction(title:"blue" , style: .default, handler: blueHandler))
        alert.addAction(UIAlertAction(title:"cancle" , style: .cancel, handler: nil))
          self.present(alert, animated: true, completion: nil)    }
    
}

