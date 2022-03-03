//
//  PomodoroTimer.swift
//  PomodoroClock
//
//  Created by Albert Pangestu on 03/03/22.
//

import Foundation

struct PomodoroTimer {
    
    var workingTimer = 0
    
    mutating func setWorkingTimer(for minutes: Int) {
        workingTimer = minutes
    }
}
