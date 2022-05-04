import XCTest
@testable import IOSFeedback

final class ManagerFeedbackTests: XCTestCase {
    
    var sut = ManagerFeedback.self
    var spy = SpyUserDefaults()
    
    override func setUp() {
        sut.userDefaults = spy
    }
    
    func testSoundSet() {
        sut.isSoundEnabled = true
        XCTAssertTrue(spy.didCallBoolSoundSet)
    }
    
    func testSoundGet() {
        let _ = sut.isSoundEnabled
        XCTAssertTrue(spy.didCallBoolSound)
    }
    
    func testHapticSet() {
        sut.isHapticEnabled = true
        XCTAssertTrue(spy.didCallBoolHapticSet)
    }
    
    func testHapticGet() {
        let _ = sut.isHapticEnabled
        XCTAssertTrue(spy.didCallBoolHaptic)
    }
    
}
