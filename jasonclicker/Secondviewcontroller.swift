//
//  Secondviewcontroller.swift
//  jasonclicker
//
//  Created by Jason Lum on 7/15/16.
//  Copyright © 2016 Jason Lum. All rights reserved.
//

import UIKit

class Secondviewcontroller: UIViewController {
    
    @IBOutlet weak var numberofclicks: UILabel!
    @IBOutlet weak var savebutton: UIBarButtonItem!
    var addjason=0
    var counter=0
    var toset=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter=0
        numberofclicks.text=String(toset)
        print("clicks:")
        print(toset)
        

        
    }

    
    @IBAction func buttonaction(sender: UIButton) {
        if toset>=5
        {
           counter=counter+1
            toset=toset-5
            numberofclicks.text=String(toset)
        }
        
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if savebutton === sender {
            addjason=counter
            
            
        }
    }
  
   
    
    

    

}
