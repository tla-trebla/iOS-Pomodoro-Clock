//
//  StartPomodoroTimerUseCase.swift
//  PomodoroClock
//
//  Created by Albert Pangestu on 03/03/22.
//

protocol StartPomodoroTimerUseCaseProtocol {
    func startPomodoroTimer(with request: PomodoroTimer)
}

struct StartPomodoroTimerUseCase: StartPomodoroTimerUseCaseProtocol {
    
    var presenter: StartPomodoroTimerPresenterOutputProtocol?
    
    func startPomodoroTimer(with request: PomodoroTimer) {
        presenter?.displayWorkingTimer(response: request.workingTimer)
    }
}
