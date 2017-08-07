//
//  ViewController.swift
//  Audio Play
//
//  Created by Vladislav Fedotovskiy on 02.06.16.
//  Copyright © 2016 Vladislav Fedotovskiy. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBAction func play(_ sender: AnyObject) {
        
    player.play()
    
    }
    
    @IBAction func pause(_ sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func adjustVolume(_ sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    
    
    
    
    @IBOutlet weak var slider: UISlider!
    var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let audioPath = Bundle.main.path(forResource: "da hype", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            
           
            
        } catch {
            
            //error here
        }
        
    

    }
    

}

