import XCTest
@testable import LibraryFeedback

final class SpyUserDefaults: UserDefaults {
    
    var didCallBoolHaptic = false
    var didCallBoolHapticSet = false
    
    var didCallBoolSound = false
    var didCallBoolSoundSet = false
    
    override func bool(forKey defaultName: String) -> Bool {
        if defaultName == "settings_feedback_haptic" {
            didCallBoolHaptic = true
        }
        if defaultName == "settings_feedback_sound" {
            didCallBoolSound = true
        }
        return false
    }
    
    override func set(_ value: Bool, forKey defaultName: String) {
        if defaultName == "settings_feedback_haptic" {
            didCallBoolHapticSet = true
        }
        if defaultName == "settings_feedback_sound" {
            didCallBoolSoundSet = true
        }
        return
    }
    
}
