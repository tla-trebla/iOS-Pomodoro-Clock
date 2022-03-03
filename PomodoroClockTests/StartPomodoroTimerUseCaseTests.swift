//
//  StartPomodoroTimerUseCaseTests.swift
//  PomodoroClockTests
//
//  Created by Albert Pangestu on 03/03/22.
//

import XCTest

class StartPomodoroTimerUseCaseTests: XCTestCase {

    func test_StartPomodoroTimer_ShouldStartWorkingTimer() {
        let sut = StartPomodoroTimerUseCase()
        
        sut.startPomodoroTimer()
        
        XCTAssertTrue(sut.isCallingStartRestTimer)
    }

}
