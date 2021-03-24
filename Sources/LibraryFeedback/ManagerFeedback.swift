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
    
    static public var isHapticEnabled: Bool {
        get {
            UserDefaults.standard.bool(forKey: "settings_feedback_haptic")
        }
        set(status) {
            UserDefaults.standard.set(status, forKey: "settings_feedback_haptic")
        }
    }
    
    static public var isSoundEnabled: Bool {
        get {
            UserDefaults.standard.bool(forKey: "settings_feedback_sound")
        }
        set(status) {
            UserDefaults.standard.set(status, forKey: "settings_feedback_sound")
        }
    }
    
    // MARK: - Life Cycle
    
    private init() { }
    
    // MARK: - Sound IDs
    
    static private var soundID_Impact: SystemSoundID = 1103 // Pin
    static private var soundID_Impact_Loud: SystemSoundID = 1057
    static private var soundID_Selector: SystemSoundID = 1105
    
    static private var soundID_Delete: SystemSoundID = 1003
    static private var soundID_Skip: SystemSoundID = 1003
    
    static private var soundID_A: SystemSoundID = 1109 // X
    static private var soundIDHMM_0: SystemSoundID = 1050 //
    static private var soundIDHMM_1: SystemSoundID = 1051 // HAPTIC
    static private var soundIDHMM_2: SystemSoundID = 1052 // HAPTIC
    
    static private var soundID_Type: SystemSoundID = 1306 // Type Light
    
    // MARK: - Feedbacks
    
    public class func selection() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Type)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
    
    public class func selectionSimple() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            guard isHapticEnabled else { return }
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func checkBox() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        }
    }
    
    public class func componentSelector() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
    
    // MARK: - Feedbacks - Components - Table View
    
    public class func componentTableViewDragDropBegin() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
    
    public class func componentTableViewDragDropChanging() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Selector)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func componentTableViewDragDropEnd() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
    
    // MARK: - Feedbacks - Onboarding
    
    public class func buttonNext() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func buttonBack() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func buttonSkip() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Skip)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
    
    // MARK: - Feedbacks - TabBar
    
    public class func tabs() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    // MARK: - Feedbacks - Buttons
    
    public class func buttonAdd() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func buttonClose() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Skip)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
        
    public class func buttonEdit() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func buttonDelete() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func deleted() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Delete)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    // MARK: - Settings - Links
    
    public class func info() {
        if isSoundEnabled {
            //AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
    }
    
    public class func segment() {
        if isSoundEnabled {
            AudioServicesPlaySystemSound(soundID_Impact)
        }
        if isHapticEnabled {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
    
}

//UINotificationFeedbackGenerator().notificationOccurred(.error)
//UINotificationFeedbackGenerator().notificationOccurred(.success)
//UINotificationFeedbackGenerator().notificationOccurred(.warning)
//UIImpactFeedbackGenerator(style: .light).impactOccurred()
//UIImpactFeedbackGenerator(style: .medium).impactOccurred()
//UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
//UISelectionFeedbackGenerator().selectionChanged()

// https://github.com/TUNER88/iOSSystemSoundsLibrary
//static var systemSoundIDs: [SystemSoundID] = [1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1050, 1051, 1052, 1053, 1054, 1055, 1057, 1070, 1071, 1072, 1073, 1074, 1075, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1150, 1151, 1152, 1153, 1154, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1254, 1255, 1256, 1257, 1258, 1259, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1350, 1351, 409]
