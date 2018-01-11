//
//  ViewController.swift
//  sasha-test-app
//
//  Created by Home on 1/9/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueBackgorund: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudView: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var orangeOval: UIImageView!
    @IBOutlet weak var modeLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        
        cloudView.isHidden = false
        blueBackgorund.isHidden = true
        powerButton.isHidden = true
        
    }
    
}

