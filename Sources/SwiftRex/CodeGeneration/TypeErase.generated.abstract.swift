// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

@inline(never)
private func _abstract(file: StaticString = #file, line: UInt = #line) -> Never {
    fatalError("Method must be overridden", file: file, line: line)
}

// MARK: - Type Eraser for Middleware

internal class _AnyMiddlewareBase<InputActionType, OutputActionType, StateType>: Middleware {
    init() {
        guard type(of: self) != _AnyMiddlewareBase.self else {
            _abstract()
        }
    }

    func handle(action: InputActionType, next: @escaping Next) -> Void {
        _abstract()
    }

    var context: (() -> MiddlewareContext<OutputActionType, StateType>) {
        get { _abstract() }
        set { _abstract() }
    }
}
