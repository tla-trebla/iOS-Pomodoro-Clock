//
//  PomodoroTimer.swift
//  PomodoroClock
//
//  Created by Albert Pangestu on 03/03/22.
//

import Foundation

struct PomodoroTimer {
    
    var workingTimer = 0
    var restTimer = 0
    
    mutating func setWorkingTimer(for minutes: Int) throws {
        if minutes < 0 {
            throw PomodoroTimerError.InvalidWorkingTimer
        }
        workingTimer = minutes
    }
    
    mutating func setRestTimer(for minutes: Int) {
        restTimer = minutes
    }
}
