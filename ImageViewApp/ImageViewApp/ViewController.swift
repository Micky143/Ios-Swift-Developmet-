//
//  ViewController.swift
//  ImageViewApp
//
//  Created by Student on 31/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    let PickerDataSource = ["Red","Green","Blue","yellow"]
    @IBOutlet weak var pickerView: UIPickerView!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PickerDataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return PickerDataSource[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0 )
        {
            pickerView.backgroundColor = UIColor.red
            img.image = imageSet[0]
        }
        else if(row == 1 )
        {
            pickerView.backgroundColor = UIColor.green
            img.image = imageSet[1]
        }
        else if(row == 2 )
        {
            pickerView.backgroundColor = UIColor.blue
            img.image = imageSet[2]
        }
        else if(row == 3 )
        {
            pickerView.backgroundColor = UIColor.yellow
            img.image = imageSet[3]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       self.pickerView.dataSource = self
        self.pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var imageSet: [UIImage] = [
       UIImage(named: "image1.jpeg")!,
       UIImage(named: "image2.jpg")!,
       UIImage(named: "image3.jpeg")!,
       UIImage(named: "image4.jpeg")!
        ]
    
    @IBAction func bc(_ sender: Any) {
        img.image=UIImage(named: "image2.jpg")
    }
    
    @IBOutlet weak var img: UIImageView!
    
    @IBAction func ba(_ sender: Any) {
        img.animationImages=imageSet
        img.animationDuration=4
        img.startAnimating()
    }
    @IBAction func sb(_ sender: Any) {
        img.stopAnimating()
    }
    
    @IBAction func bAlert(_ sender: Any) {
        let okHandler={
            (action: UIAlertAction) -> Void in
            self.view.backgroundColor=UIColor.red
        }
        let alert = UIAlertController(title: "warning", message: "Don't click again", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: okHandler))
        alert.addAction(UIAlertAction(title: "cancle", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func bAction(_ sender: Any) {
        let redHandler={
            (action: UIAlertAction) -> Void in
            self.view.backgroundColor=UIColor.red
        }
        let blueHandler={
            (action: UIAlertAction) -> Void in
            self.view.backgroundColor=UIColor.blue
        }
        let alert = UIAlertController(title: "Colors", message: "Select color", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "Red", style: .default, handler: redHandler))
          alert.addAction(UIAlertAction(title: "Blue", style: .default, handler: blueHandler))
        
        alert.addAction(UIAlertAction(title: "cancle", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

