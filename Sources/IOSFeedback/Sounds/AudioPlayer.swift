//
//  AudioPlayer.swift
//  
//
//  Created by João Gabriel Borelli Padilha on 06/09/22.
//

import AVFoundation

// MARK: - Audio Data

public enum Audio: String {
    case myAudio = "MyAudio"
    
    func getType() -> AudioType {
        switch self {
        case .myAudio:
            return .m4a
        }
    }
}

internal enum AudioType: String {
    case mp3 = "mp3"
    case m4a = "m4a"
}

// MARK: - Audio Manager

internal protocol AudioPlayerDelegate {
    func didEnd(audio: AudioPlayer)
}

internal class AudioPlayer: NSObject {

    var delegate: AudioPlayerDelegate?

    private var myAudio: AVAudioPlayer?

    public init(audio: Audio) {
        let path = Bundle(for: Self.self).path(forResource: audio.rawValue, ofType: audio.getType().rawValue)!
        let url = URL(fileURLWithPath: path)
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            myAudio = sound
        } catch {
            //
        }
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
