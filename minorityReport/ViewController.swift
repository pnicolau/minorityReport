//
//  ViewController.swift
//  minorityReport
//
//  Created by Paula Nicolau on 6/16/16.
//  Copyright © 2016 Paula Nicolau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var theFutureLabel: UILabel!
    @IBOutlet var PreCogLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        
    }

   
    @IBAction func onDrag(sender: UIPanGestureRecognizer)
    {
     let point = sender.locationInView(view)
     theFutureLabel.center = point
        if sender.state == .Ended
        {
            UIView.animateWithDuration(0.8, animations:
                {
                    self.theFutureLabel.center = self.view.center})
        }
    
        else if CGRectContainsPoint(PreCogLabel.frame, point)
        {
            let myAlert = UIAlertController(title: "Minority Report", message: "PreCog Detected!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "Arrest Them!", style: .Default, handler: nil))
            myAlert.addAction(UIAlertAction(title: "Let Em Go!", style: .Default, handler: nil))
            presentViewController(myAlert, animated: true, completion: nil)
        }
           // print("ended") test to see if it recognnizes that you have stopped touching it
        
        }
        
    
    
    


}

