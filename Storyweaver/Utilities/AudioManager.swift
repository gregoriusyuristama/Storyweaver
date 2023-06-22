//
//  AudioManager.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/22/23.
//

import Foundation

import AVFoundation

class AudioManager {
    static let shared = AudioManager() // Singleton instance
    
    var backgroundMusicPlayer: AVAudioPlayer?
    
    func playBackgroundMusic(fileName: String) {
        let backgroundMusicURL = Bundle.main.url(forResource: fileName, withExtension: "mp3")!
        
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: backgroundMusicURL)
            backgroundMusicPlayer?.numberOfLoops = -1 // Infinite loop
            backgroundMusicPlayer?.play()
        } catch {
            print("Failed to play background music: \(error.localizedDescription)")
        }
    }
    
    func stopBackgroundMusic() {
        backgroundMusicPlayer?.stop()
    }
    
    func playSFX(filename: String) {
//        stopBackgroundMusic()
        
        let SFXUrl = Bundle.main.url(forResource: filename, withExtension: "mp3")!
        
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: SFXUrl)
//            backgroundMusicPlayer?.numberOfLoops = -1 // Infinite loop
            backgroundMusicPlayer?.play()
        } catch {
            print("Failed to play different music: \(error.localizedDescription)")
        }
    }
}
