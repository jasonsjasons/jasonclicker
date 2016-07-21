//
//  ViewController.swift
//  jasonclicker
//
//  Created by Jason Lum on 7/13/16.
//  Copyright © 2016 Jason Lum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let userDefaults = NSUserDefaults.standardUserDefaults()
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var buybutton: UIBarButtonItem!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var menu: UIButton!
    @IBOutlet weak var numberofjasons: UITextField!
    var clicks=0
    var timer=NSTimer()
    var binaryCount=0b0000
    var seibel=1
    func addjasonsmethod(){
        print("running")
        clicks=clicks+Int(numberofjasons.text!)!*seibel
        number.text=String(clicks)
        userDefaults.setInteger(clicks, forKey: "clicks")
        userDefaults.synchronize()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        clicks=userDefaults.integerForKey("clicks")
        number.text=String(clicks)
        timer=NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(addjasonsmethod), userInfo: nil, repeats: true)
        if let jason=userDefaults.objectForKey("jasons")
        {
        numberofjasons.text=String(jason)
        }

    }
    func addjasons(addjason: Int){
        numberofjasons.text=String(Int(numberofjasons.text!)!+addjason)
        userDefaults.setObject(numberofjasons.text!, forKey: "jasons")
        userDefaults.synchronize()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clicked(sender: UIButton) {
        let a = Int(number.text!)
        clicks = a!+1
        number.text=String(clicks)
        userDefaults.setInteger(clicks, forKey: "clicks")
        userDefaults.synchronize()

    }
    //changes jasons
    @IBAction func frombuymenu(sender: UIStoryboardSegue){
        if let sourViewController = sender.sourceViewController as? Secondviewcontroller{
            addjasons(sourViewController.addjason)
            clicks=sourViewController.toset
            number.text=String(clicks)
            
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "gotobuymenusegue" {
            let nav = segue.destinationViewController as! UINavigationController
            let addEventViewController = nav.topViewController as! Secondviewcontroller
            addEventViewController.toset = clicks
        }
     }
    
 

}

