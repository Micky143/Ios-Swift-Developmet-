//
//  ViewController.swift
//  myapp
//
//  Created by Student on 13/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITextFieldDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var tb1:UITextField!
    @IBOutlet var tb2:UITextField!
    @IBOutlet var lb:UILabel!
    //@IBAction func textFieldShouldReturn()
   // {
   //     tb1.resignFirstResponder()
    
    
   // }
   @IBAction func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tb1.resignFirstResponder()
        tb2.resignFirstResponder()
        return true
    }
     func btnAlert(_ Sender:Any)
    {
        var alt = UIAlertController(title: "warning!", message: "Fields should not be empty",preferredStyle: UIAlertControllerStyle.alert)
        alt.addAction(UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil))
        present(alt,animated: true, completion: nil)
    }
     func btnzero(_ Sender:Any)
    {
        var alt = UIAlertController(title: "warning!", message: "Second number cannot be zero",preferredStyle: UIAlertControllerStyle.actionSheet)
        alt.addAction(UIAlertAction(title:"ok", style:UIAlertActionStyle.cancel, handler: nil))
        present(alt,animated: true, completion: nil)
    }
    @IBAction func add()
    {
        if(tb1.text == "" || tb2.text == "")
        {
            btnAlert("hlo")
        }
        else
        {
            let tb1n:Int!=Int(tb1.text!)
            let tb2n:Int!=Int(tb2.text!)
            let convert = tb1n+tb2n
            let convertext = String(convert)
            lb!.text=convertext
        }
    }
    @IBAction func sub()
    {
        if(tb1.text == "" || tb2.text == "")
        {
            btnAlert("hlog")
        }
        else
        {
            let tb1n:Int!=Int(tb1.text!)
            let tb2n:Int!=Int(tb2.text!)
            let convert = tb1n-tb2n
            let convertext = String(convert)
            lb!.text=convertext
        }
        
    }
    @IBAction func mul()
    {
        if(tb1.text == "" || tb2.text == "")
        {
            btnAlert("hlok")
        }
        else
        {
            let tb1n:Int!=Int(tb1.text!)
            let tb2n:Int!=Int(tb2.text!)
            let convert = tb1n*tb2n
            let convertext = String(convert)
            lb!.text=convertext
        }
    }
    @IBAction func div()
    {
        if(tb1.text == "" || tb2.text == "")
        {
            btnAlert("hlod")
        }
        else if(tb2.text == "0")
        {
            btnzero("hi")
        }
        else
        {
            let tb1n:Float!=Float(tb1.text!)
            let tb2n:Float!=Float(tb2.text!)
            let convert = tb1n/tb2n
            let convertext = String(convert)
            lb!.text=convertext
        }
    }
    

}

