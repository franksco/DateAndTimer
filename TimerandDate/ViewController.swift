//
//  ViewController.swift
//  TimerandDate
//
//  Created by Cory Franks on 2/16/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //@IBOutlet var timeLabel: UILabel!
    //@IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var time: UILabel!
    @IBOutlet var date: UILabel!
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateTimer() 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer() {
        
        let dateFormatter = DateFormatter()
        let timeFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        timeFormatter.timeStyle = .medium
        
        
        date.text = dateFormatter.string(from: NSDate() as Date)
        time.text = timeFormatter.string(from: NSDate() as Date)
        
        
        
        
    }
    


}

