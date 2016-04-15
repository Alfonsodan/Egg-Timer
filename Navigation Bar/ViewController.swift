//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Daniel Colangelo on 4/15/16.
//  Copyright © 2016 Daniel Colangelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func increaseTimer() {
    
        time++
        
        timerLabel.text = String(time)
    
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
        
    }
    

    override func viewDidLoad() {
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

