//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

//you can import AVAUdioPlayerDelegate
class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    
    var audioPlayer : AVAudioPlayer!
    //var player : AVAudioPlayer?
    
    var selectedSoundFileName : String = ""
    
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
        
        
        
        
        
        //        if sender.tag == 1 {
//            
//            playSound(specificSound: 1)
//            
//        }else if sender.tag == 2{
//            
//            playSound(specificSound: 2)
//        } else if sender.tag == 3{
//            
//            
//            playSound(specificSound: 3)
//            
//        } else if sender.tag == 4{
//            
//            playSound(specificSound: 4)
//        } else if sender.tag == 5{
//            
//            playSound(specificSound: 5)
//            
//        }else if sender.tag == 6{
//            playSound(specificSound: 6)
//            
//            
//        }else {
//            
//            playSound(specificSound: 7)
//        }
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")!
        
        do {
           audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            
            
        } catch {
            print(error)
        }
        audioPlayer.play()
    }

    
    
    
//    
//  MARK:- PLAY SOUND
//    func playSound(specificSound : Int) {
//        let url = Bundle.main.url(forResource: "note\(specificSound)", withExtension: "wav")!
//        
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            guard let player = player else { return }
//            
//            player.prepareToPlay()
//            player.play()
//            
//        } catch let error as NSError {
//            print(error.description)
//        }
//    }
    
    
//    let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
//    
//    do {
//    audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
//    
//    } catch {
//    
//        print(error)
//    
//    }
//    audioPlayer.play()

}

