//
//  PomodoroTimerTests.swift
//  PomodoroClockTests
//
//  Created by Albert Pangestu on 03/03/22.
//

import XCTest
@testable import PomodoroClock

class PomodoroTimerTests: XCTestCase {
    
    private var sut: PomodoroTimer!
    
    override func setUp() {
        sut = PomodoroTimer()
    }

    func test_InitialTimerValueZero() {
        XCTAssertEqual(sut.workingTimer, 0)
        XCTAssertEqual(sut.restTimer, 0)
    }
    
    func test_SetWorkingTimer_ShouldSaveWorkingTimer() {
        try? self.sut.setWorkingTimer(for: 25)
        
        XCTAssertEqual(self.sut.workingTimer, 25)
    }
    
    func test_SetRestTimer_ShouldSaveRestTimer() {
        self.sut.setRestTimer(for: 5)
        
        XCTAssertEqual(self.sut.restTimer, 5)
    }
    
    func test_SetInvalidWorkingTimer_ShouldNotSaveWorkingTimer() {
        XCTAssertThrowsError(try self.sut.setWorkingTimer(for: -1)) { error in
            XCTAssertEqual(error as? PomodoroTimerError, PomodoroTimerError.InvalidWorkingTimer)
        }
    }

}
