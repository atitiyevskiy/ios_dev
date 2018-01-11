//
//  ViewController.swift
//  sasha-test-app
//
//  Created by Home on 1/9/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var blueBackgorund: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudView: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var modeLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //setting url path for the audio file
        let path = Bundle.main.path(forResource: "hustle-on", ofType: ".wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        
        cloudView.isHidden = false
        blueBackgorund.isHidden = true
        powerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width:354, height: 400)
        })  {(finished) in
            self.modeLabel.isHidden = false
            self.onLabel.isHidden = false
        }
        }
        
        
        
    }
    


