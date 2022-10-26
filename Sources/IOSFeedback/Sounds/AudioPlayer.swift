//
//  AudioPlayer.swift
//  
//
//  Created by João Gabriel Borelli Padilha on 06/09/22.
//

import AVFoundation

// MARK: - Audio Manager

internal protocol AudioPlayerDelegate {
    func didEnd(audio: AudioPlayer)
}

internal class AudioPlayer: NSObject {

    var delegate: AudioPlayerDelegate?

    private var myAudio: AVAudioPlayer?

    public init(audio: Audio) {
        var path = ""
        switch audio {
        case .custom(let file, let type):
            path = Bundle.main.path(forResource: file, ofType: type)!
        case .audio(let audio):
            path = Bundle.module.path(forResource: audio.rawValue, ofType: audio.getType().rawValue)!
        }
        let url = URL(fileURLWithPath: path)
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            myAudio = sound
        } catch {
            //
        }
    }
    
    deinit {
        print("AudioPlayer: 👋🏻 Deinit")
    }

    func play() {
        myAudio?.delegate = self // audioPlayerDidFinishPlaying
        myAudio?.play()
    }

    func stop() {
        myAudio?.stop()
        myAudio = nil
    }

}

extension AudioPlayer: AVAudioPlayerDelegate {

    public func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        delegate?.didEnd(audio: self)
    }

}
