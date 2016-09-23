//
//  ViewController.swift
//  BoxyTableExample
//
//  Created by Weien Wang on 9/23/16.
//  Copyright © 2016 Weien Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dc = DataController()
        dc.generateItems()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

