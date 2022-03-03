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
        let sut = StartPomodoroTimerUseCase()
        sut.presenter = StartPomodoroTimerPresenterOutput()
        
        sut.startPomodoroTimer()
        
        XCTAssertTrue(presenter.presentWorkingTimer)
    }
    
    func test_WhenWorkingTimerIsOver_ShouldStartRestTimer() {
        let sut = StartPomodoroTimerUseCaseSpy()
        
        sut.startPomodoroTimer()
        
        XCTAssertTrue(sut.isCallingStartRestTimerCount == 1)
    }

}

class StartPomodoroTimerUseCaseSpy: StartPomodoroTimerUseCaseProtocol {
    private(set) var isCallingStartRestTimerCount = 0
    
    func startPomodoroTimer() {
        isCallingStartRestTimerCount += 1
    }
}
