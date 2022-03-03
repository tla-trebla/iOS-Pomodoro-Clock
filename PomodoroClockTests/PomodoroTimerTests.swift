//
//  PomodoroTimerTests.swift
//  PomodoroClockTests
//
//  Created by Albert Pangestu on 03/03/22.
//

import XCTest
@testable import PomodoroClock

class PomodoroTimerTests: XCTestCase {

    func test_InitializePomodoroTimer() {
        let sut = PomodoroTimer()
        
        XCTAssertNotNil(sut)
    }
    
    func test_SetWorkingTimer_ShouldSaveWorkingTimer() {
        var sut = PomodoroTimer()
        
        sut.setWorkingTimer(for: 25)
        
        XCTAssertEqual(sut.workingTimer, 25)
    }
    
    func test_SetRestTimer_ShouldSaveRestTimer() {
        var sut = PomodoroTimer()
        
        sut.setRestTimer(for: 5)
        
        XCTAssertEqual(sut.restTimer, 5)
    }

}
