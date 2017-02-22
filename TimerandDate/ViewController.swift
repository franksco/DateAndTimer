//
//  ViewController.swift
//  TimerandDate
//
//  Created by Cory Franks on 2/16/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var time: UILabel!
    @IBOutlet var date: UILabel!
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        //NSTimer that calls global timer variable and starts when the page loads and calls updateTimer func every second to display current date and time.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer() {
        
        let dateFormatter = DateFormatter()
        let timeFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        timeFormatter.timeStyle = .long
        
        
        date.text = dateFormatter.string(from: NSDate() as Date)
        time.text = timeFormatter.string(from: NSDate() as Date)
        
        
        //func sets time and date formats (aka how the time and date is displated,) then gives it a format style in this case medium for date and long for time and then changes the variable to a String so it can be displayed in their respective labels.
        
    }
    


}

