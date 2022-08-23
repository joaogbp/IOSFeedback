//
//  ManagerFeedback.swift
//  
//
//  Created by João Gabriel Borelli Padilha on 24/03/21.
//

import UIKit
import AVFoundation

public class ManagerFeedback {
    
    // MARK: - Properties
    
    static var userDefaults: UserDefaults = UserDefaults.standard
    
    static private(set) var isHapticEnabledString = FeedbackLocalKeys.haptic.rawValue
    static public var isHapticEnabled: Bool {
        get {
            userDefaults.bool(forKey: FeedbackLocalKeys.haptic.rawValue)
        }
        set(status) {
            userDefaults.set(status, forKey: FeedbackLocalKeys.haptic.rawValue)
        }
    }
    
    static private(set) var isSoundEnabledString = FeedbackLocalKeys.sound.rawValue
    static public var isSoundEnabled: Bool {
        get {
            userDefaults.bool(forKey: FeedbackLocalKeys.sound.rawValue)
        }
        set(status) {
            userDefaults.set(status, forKey: FeedbackLocalKeys.sound.rawValue)
        }
    }
    
    // MARK: - Life Cycle
    
    private init() { }
    
    // MARK: - Sound IDs
    
    // MARK: - Feedbacks
    
    public class func feedback(sound: SoundType? = nil,
                               haptic: UIImpactFeedbackGenerator.FeedbackStyle? = nil) {
        if isSoundEnabled, let sound = sound {
            AudioServicesPlaySystemSound(SystemSoundID(sound.rawValue))
        }
        if isHapticEnabled, let haptic = haptic {
            UIImpactFeedbackGenerator(style: haptic).impactOccurred()
        }
    }
    
}

