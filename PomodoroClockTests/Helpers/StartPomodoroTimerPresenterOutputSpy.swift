//
//  StartPomodoroTimerPresenterOutputSpy.swift
//  PomodoroClockTests
//
//  Created by Albert Pangestu on 04/03/22.
//

import Foundation
@testable import PomodoroClock

class StartPomodoroTimerPresenterOutputSpy: StartPomodoroTimerPresenterOutputProtocol {
    
    var presentWorkingTimerCalled = false
    
    func displayWorkingTimer(response workingTimer: Int) {
        presentWorkingTimerCalled = true
    }
}
