//
//  ViewController.swift
//  TimerandDate
//
//  Created by Cory Franks on 2/16/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer() {
        
        
        let timeFormatter = DateFormatter()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        timeFormatter.timeStyle = .medium
        
        
        dateLabel.text = dateFormatter.string(from: NSDate() as Date)
        timeLabel.text = timeFormatter.string(from: NSDate() as Date)
        
        
        
        
    }
    


}

