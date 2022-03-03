//
//  PomodoroTimer.swift
//  PomodoroClock
//
//  Created by Albert Pangestu on 03/03/22.
//

import Foundation

struct PomodoroTimer {
    
    var timer = 0
    
    mutating func setTimer(for minutes: Int) {
        timer = minutes
    }
}
