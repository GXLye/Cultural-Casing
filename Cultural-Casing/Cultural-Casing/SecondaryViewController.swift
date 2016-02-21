//
//  SecondaryViewController.swift
//  Cultural-Casing
//
//  Created by GXLye on 21/02/2016.
//  Copyright © 2016 Sweatshop. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController {

    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var firstImage: SpringImageView!
    @IBOutlet weak var secondImage: SpringImageView!
    @IBOutlet weak var thirdImage: SpringImageView!
    
    @IBOutlet weak var firstLabel: SpringLabel!
    @IBOutlet weak var secondLabel: SpringLabel!
    @IBOutlet weak var thirdLabel: SpringLabel!
    
    @IBOutlet weak var roundedButton: UIButton!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundedButton.layer.cornerRadius = 5
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1.0).CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAnimation(sender: AnyObject) {
        
        firstImage.animation = "fadeOut"
        firstImage.curve = "spring"
        firstImage.duration = 1.0
        
        secondImage.animation = "fadeOut"
        secondImage.curve = "spring"
        secondImage.duration = 1.0
        
        thirdImage.animation = "fadeOut"
        thirdImage.curve = "spring"
        thirdImage.duration = 1.0
        
        if sender.tag == 1 {
            thirdImage.delay = 0.3
            firstImage.delay = 0.8
        } else if sender.tag == 2 {
            thirdImage.delay = 0.3
            secondImage.delay = 0.8
        } else {
            secondImage.delay = 0.3
            thirdImage.delay = 0.8
        }
        
        UIView.animateWithDuration(1.8, animations: {
            
            self.firstImage.animate()
            self.secondImage.animate()
            self.thirdImage.animate()
            
            self.firstLabel.alpha = 0
            self.secondLabel.alpha = 0
            self.thirdLabel.alpha = 0
            
            self.stepLabel.text = "Step 2"
            self.titleLabel.text = "Color"
            
            self.roundedButton.setTitle("", forState: .Normal)
            }, completion: { finished in
                self.performSegueWithIdentifier("shapeToColor", sender: self)
        })
    }
    
    @IBAction func backToMenu(sender: AnyObject) {
        dismissViewControllerAnimated(false, completion: nil)
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
