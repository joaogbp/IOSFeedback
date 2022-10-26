//
//  File.swift
//  
//
//  Created by João Gabriel Borelli Padilha on 25/10/22.
//

import Foundation

// MARK: - Audio Data

public enum Audio {
    case custom(file: String, type: String)
    case audio(audio: DefaultAudio)
}

public enum DefaultAudio: String {
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
