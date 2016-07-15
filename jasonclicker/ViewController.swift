//
//  ViewController.swift
//  jasonclicker
//
//  Created by Jason Lum on 7/13/16.
//  Copyright © 2016 Jason Lum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var menu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clicked(sender: UIButton) {
        var a = Int(number.text!)
        var b=a!+1
        number.text=String(b)
    }

}

