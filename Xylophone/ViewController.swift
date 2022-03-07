//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //Imported AVFoundation for sound library

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.currentTitle)
        playSound()
    }
    
    func playSound() {
        //set url to be the location of our C.wav sound file
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        //loaded player with our url
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

