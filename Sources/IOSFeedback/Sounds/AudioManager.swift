//
//  File.swift
//  
//
//  Created by João Gabriel Borelli Padilha on 06/09/22.
//

import AVFoundation

public class AudioManager {

    static public let shared = AudioManager()

    private var playingAudioManagers: [AudioPlayer] = []

    private init() { }

    func play(audio: Audio) {
        let audioManager = AudioPlayer(audio: audio)
        audioManager.delegate = self
        playingAudioManagers.append(audioManager)
        audioManager.play()
    }

}

extension AudioManager: AudioPlayerDelegate {

    func didEnd(audio: AudioPlayer) {
        playingAudioManagers.removeAll(where: { $0 == audio })
        //print("AUDIOS = \(playingAudioManagers.count)")
    }

}
