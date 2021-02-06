import Combine
import UIKit

class BaseMVVMViewController<State: Equatable>: UIViewController {
    private var cancellables: Set<AnyCancellable> = []
    private(set) var viewModel: BaseViewModel<State>!

    init(viewModel: BaseViewModel<State>) {
        self.viewModel = viewModel
        super.init()
        viewModel.statePublisher
            .receive(on: RunLoop.main)
            .sink(receiveValue: render(state:))
            .store(in: &cancellables)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) Only supports code")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewLoaded()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.viewAppeared()
    }

    func render(state: State) {}
}
