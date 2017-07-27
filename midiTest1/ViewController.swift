//
//  ViewController.swift
//  midiTest1
//
//  Created by Admin on 24.07.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let mixloop = try AKAudioFile(readFileName: "mixloop.wav", baseDir: .resources)
            
            let player = try AKAudioPlayer(file: mixloop) {
                print("completion callback has been triggered!")
            }
            
            AudioKit.output = player
            AudioKit.start()
            player.looping = true
        } catch {
            print(error)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

