//
//  Coconut.swift
//  Coconut
//
//  Created by Andrew on 2022-10-23.
//

import UIKit

public final class Coconut {
    private(set) static var batteryLevel: Int = 0
    
    private init() {
        UIDevice.current.isBatteryMonitoringEnabled = true
        Coconut.batteryLevel = Int(UIDevice.current.batteryLevel * 100)
    }
    
    public static func getBatteryLevel() -> Int {
        Int(UIDevice.current.batteryLevel * 100)
    }
}
