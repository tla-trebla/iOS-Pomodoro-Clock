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

}
