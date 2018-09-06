//
//  ViewController.swift
//  project6
//
//  Created by Student on 28/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let imag = [#imageLiteral(resourceName: "Image-2"),#imageLiteral(resourceName: "Image-1"),#imageLiteral(resourceName: "Image")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(imag.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)as! TableViewCell2
        cell.img.image = UIImage(named:"image3"+".jpg")
        return (cell)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

