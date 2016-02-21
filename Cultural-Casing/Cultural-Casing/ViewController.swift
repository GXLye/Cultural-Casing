//
//  ViewController.swift
//  Cultural-Casing
//
//  Created by GXLye on 20/02/2016.
//  Copyright © 2016 Sweatshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImage: SpringImageView!
    @IBOutlet weak var secondImage: SpringImageView!
    @IBOutlet weak var thirdImage: SpringImageView!
    
    @IBOutlet weak var firstLabel: SpringLabel!
    @IBOutlet weak var secondLabel: SpringLabel!
    @IBOutlet weak var thirdLabel: SpringLabel!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

