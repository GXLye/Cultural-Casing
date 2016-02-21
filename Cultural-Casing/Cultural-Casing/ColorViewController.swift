//
//  ColorViewController.swift
//  Cultural-Casing
//
//  Created by GXLye on 21/02/2016.
//  Copyright © 2016 Sweatshop. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    @IBOutlet var roundedColor: [UIButton]!
    @IBOutlet weak var roundedButton: SpringButton!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for button in roundedColor {
            button.layer.cornerRadius = 10
        }
        
        roundedButton.layer.cornerRadius = 5
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1.0).CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorChosen(sender: AnyObject) {
        for button in roundedColor {
            button.layer.borderWidth = 0
            button.layer.borderColor = UIColor.orangeColor().CGColor
            
            if button.tag == sender.tag {
                button.layer.borderWidth = 9
            }
        }
        
        if roundedButton.alpha == 0 {
            roundedButton.animate()
        }
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
