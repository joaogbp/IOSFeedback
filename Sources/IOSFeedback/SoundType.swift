//
//  SoundType.swift
//
//
//  Created by João Gabriel Borelli Padilha on 10/06/22.
//

import UIKit
import AVFoundation

public enum SoundType: Int {
    // swiftlint:disable identifier_name
    case soundID_Impact = 1103 // Pin
    // swiftlint:disable identifier_name
    case soundID_Impact_Loud = 1057
    // swiftlint:disable identifier_name
    case soundID_Selector = 1105
    
    // swiftlint:disable identifier_name
    case soundID_Delete = 1003
    // swiftlint:disable identifier_name
    
    // swiftlint:disable identifier_name
    case soundID_A = 1109 // X
    // swiftlint:disable identifier_name
    case soundID_B = 1050 //
    // swiftlint:disable identifier_name
    case soundID_C = 1051 // HAPTIC
    // swiftlint:disable identifier_name
    case soundID_D = 1052 // HAPTIC
    
    // swiftlint:disable identifier_name
    case soundID_E = 1306 // Type Light
}

//UINotificationFeedbackGenerator().notificationOccurred(.error)
//UINotificationFeedbackGenerator().notificationOccurred(.success)
//UINotificationFeedbackGenerator().notificationOccurred(.warning)
//UIImpactFeedbackGenerator(style: .light).impactOccurred()
//UIImpactFeedbackGenerator(style: .medium).impactOccurred()
//UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
//UISelectionFeedbackGenerator().selectionChanged()

// https://github.com/TUNER88/iOSSystemSoundsLibrary
// swiftlint:disable line_length
//static var systemSoundIDs: [SystemSoundID] = [1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1050, 1051, 1052, 1053, 1054, 1055, 1057, 1070, 1071, 1072, 1073, 1074, 1075, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1150, 1151, 1152, 1153, 1154, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1254, 1255, 1256, 1257, 1258, 1259, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1350, 1351, 409]
