//
//  PrintViewController.swift
//  Cultural-Casing
//
//  Created by GXLye on 21/02/2016.
//  Copyright © 2016 Sweatshop. All rights reserved.
//

import UIKit

class PrintViewController: UIViewController {

    @IBOutlet weak var centerLabel: SpringLabel!
    @IBOutlet weak var newButton: SpringButton!
    
    @IBOutlet weak var testLabel: SpringLabel!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        newButton.alpha = 0

        // Do any additional setup after loading the view.
//        UIView.animateWithDuration(5.0, animations: {
//            self.testLabel.alpha = 0
//            
//            }, completion: { finished in
//            
//                if finished {
//                    self.centerLabel.text = "Done"
//                    self.newButton.alpha = 100
//
//                }
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restartButton(sender: AnyObject) {
        performSegueWithIdentifier("printToStart", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
