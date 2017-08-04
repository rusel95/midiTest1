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
        
//        do {
//            let mixloop = try AKAudioFile(readFileName: "mixloop.wav", baseDir: .resources)
//            
//            let player = try AKAudioPlayer(file: mixloop) {
//                print("completion callback has been triggered!")
//            }
//            
//            AudioKit.output = player
//            AudioKit.start()
//            player.looping = true
//        } catch {
//            print(error)
//        }
        
        guard let mp3FileURL = Bundle.main.url(forResource: "Imagine Dragons - Battle Cry", withExtension: "mp3") else {
            fatalError("\"test.mid\" file not found.")
        }
        
        //transforming it to url
        //instanciating asset with url associated file
        let asset = AVAsset.init(url: mp3FileURL)
        
        print(asset.lyrics)
        //using the asset property to get the metadata of file
        for metaDataItems in asset.commonMetadata {
            
            //getting the title of the song
            if metaDataItems.commonKey == "title" {
                let titleData = metaDataItems.value as! String

                print("title ---> \(titleData)")
            }
            
            //getting the "Artist of the mp3 file"
            if metaDataItems.commonKey == "artist" {
                let artistData = metaDataItems.value as! String
                print("artist ---> \(artistData)")
            }
            
            //getting the thumbnail image associated with file
//            if metaDataItems.commonKey == "artwork" {
//                print(metaDataItems.value?.description)
//            }
            
            if metaDataItems.commonKey == "comment" {
                print(metaDataItems.value as! String)
            }
        }
    }
    
    
    
}

