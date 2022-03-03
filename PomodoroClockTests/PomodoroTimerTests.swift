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

    func test_InitializePomodoroTimer() {
        XCTAssertNotNil(self.sut)
    }
    
    func test_SetWorkingTimer_ShouldSaveWorkingTimer() {
        self.sut.setWorkingTimer(for: 25)
        
        XCTAssertEqual(self.sut.workingTimer, 25)
    }
    
    func test_SetRestTimer_ShouldSaveRestTimer() {
        self.sut.setRestTimer(for: 5)
        
        XCTAssertEqual(self.sut.restTimer, 5)
    }

}
