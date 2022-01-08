//
//  Sounds.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 1/6/22.
//

import Foundation
import AVFoundation
class SoundsController {

  static var audioPlayer:AVAudioPlayer?

  static func playSounds(soundfile: String) {

      if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

          do {

              audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
              audioPlayer?.prepareToPlay()
              audioPlayer?.numberOfLoops = 3
              audioPlayer?.play()

          } catch {
              print("Error")
          }
      }
   }
    
    static func stopAudio() {
        audioPlayer?.setVolume(0, fadeDuration: 2)
        
    }
}
