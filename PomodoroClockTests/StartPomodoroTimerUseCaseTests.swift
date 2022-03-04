//
//  StartPomodoroTimerUseCaseTests.swift
//  PomodoroClockTests
//
//  Created by Albert Pangestu on 03/03/22.
//

import XCTest
@testable import PomodoroClock

class StartPomodoroTimerUseCaseTests: XCTestCase {
    
    func test_WhenStartPomodoroTimer_ShouldStartWorkingTimer() {
        let presenterSpy = StartPomodoroTimerPresenterOutputSpy()
        var sut = StartPomodoroTimerUseCase()
        sut.presenter = presenterSpy
        let request = PomodoroTimer(workingTimer: 25, restTimer: 5)
        
        sut.startPomodoroTimer(with: request)
        
        XCTAssertTrue(presenterSpy.presentWorkingTimerCalled)
    }

}
