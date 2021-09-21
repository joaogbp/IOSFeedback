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
            return true
        }
        if defaultName == "settings_feedback_sound" {
            didCallBoolSound = true
            return true
        }
        return false
    }
    
    override func setValue(_ value: Any?, forKey key: String) {
        if key == "settings_feedback_haptic" {
            didCallBoolHapticSet = true
            return
        }
        if key == "settings_feedback_sound" {
            didCallBoolSoundSet = true
            return
        }
        return
    }
    
}
