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
    
    static public var isHapticEnabledString = "settings_feedback_haptic"
    static public var isHapticEnabled: Bool {
        get {
            userDefaults.bool(forKey: "settings_feedback_haptic")
        }
        set(status) {
            userDefaults.set(status, forKey: "settings_feedback_haptic")
        }
    }
    
    static public var isSoundEnabledString = "settings_feedback_sound"
    static public var isSoundEnabled: Bool {
        get {
            userDefaults.bool(forKey: "settings_feedback_sound")
        }
        set(status) {
            userDefaults.set(status, forKey: "settings_feedback_sound")
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

