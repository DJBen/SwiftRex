import SwiftRex

let createReducerMock: () -> (Reducer<ActionMock, TestState>, ReducerMock) = {
    let mock = ReducerMock()

    return (Reducer { state, action in
        mock.reduceActionCallsCount += 1
        mock.reduceActionReceivedArguments = (currentState: state, action: action)
        return mock.reduceActionClosure.map { $0(state, action) } ?? mock.reduceActionReturnValue
    }, mock)
}

class ReducerMock {
    // MARK: - reduce

    var reduceActionCallsCount = 0
    var reduceActionCalled: Bool {
        return reduceActionCallsCount > 0
    }
    var reduceActionReceivedArguments: (currentState: TestState, action: ActionMock)?
    var reduceActionReturnValue: TestState!
    var reduceActionClosure: ((TestState, ActionMock) -> TestState)?
}
