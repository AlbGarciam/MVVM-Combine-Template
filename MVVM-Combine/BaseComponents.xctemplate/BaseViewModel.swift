import Foundation

class BaseViewModel<State: Equatable> {
    @Published var state: State
    var statePublisher: Published<State>.Publisher { $state }

    init(initialState: State) {
        self.state = initialState
    }

    func viewLoaded() { }
    func viewWillAppear() { }
    func viewAppeared() { }
}
