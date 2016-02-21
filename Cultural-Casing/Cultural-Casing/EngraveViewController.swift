//
//  EngraveViewController.swift
//  Cultural-Casing
//
//  Created by GXLye on 21/02/2016.
//  Copyright © 2016 Sweatshop. All rights reserved.
//

import UIKit

class EngraveViewController: UIViewController {

    @IBOutlet weak var roundedButton: SpringButton!
    
    @IBOutlet weak var firstLineView: UIView!
    @IBOutlet weak var secondLineView: UIView!
    
    @IBOutlet weak var firstTextView: UITextField!
    @IBOutlet weak var secondTextView: UITextField!
    
    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var suggestionLabel: UILabel!
    @IBOutlet weak var suggestionLabel2: UILabel!
    
    @IBOutlet weak var firstBottomContraint: NSLayoutConstraint!
    @IBOutlet weak var secondBottomContraint: NSLayoutConstraint!
    
    @IBOutlet weak var coverBottomConstrait: NSLayoutConstraint!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        roundedButton.layer.cornerRadius = 5
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1.0).CGColor
        
        firstLineView.layer.cornerRadius = 5
        firstLineView.layer.borderWidth = 3
        firstLineView.layer.borderColor = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1.0).CGColor
        
        secondLineView.layer.cornerRadius = 5
        secondLineView.layer.borderWidth = 3
        secondLineView.layer.borderColor = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1.0).CGColor
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name:UIKeyboardWillShowNotification, object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name:UIKeyboardWillHideNotification, object: nil);

    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self);
    }
    
    func keyboardWillShow(notification: NSNotification) {
        var info = notification.userInfo!
        let keyboardFrame: CGRect = (info[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.firstBottomContraint.constant = keyboardFrame.size.height + 200
            self.secondBottomContraint.constant = keyboardFrame.size.height + 100
            self.coverBottomConstrait.constant = keyboardFrame.size.height - 20
        })
    }
    
    func keyboardWillHide(notification: NSNotification) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.firstBottomContraint.constant = 248
            self.secondBottomContraint.constant = 148
            self.coverBottomConstrait.constant = 0
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func printButton(sender: AnyObject) {
        
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.firstLineView.alpha = 0
            self.secondLineView.alpha = 0
            self.firstTextView.alpha = 0
            self.secondLineView.alpha = 0
            
            self.stepLabel.alpha = 0
            self.titleLabel.alpha = 0
            
            self.roundedButton.alpha = 0
            }, completion: { finished in
                self.performSegueWithIdentifier("engraveToPrint", sender: self)
        })
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
