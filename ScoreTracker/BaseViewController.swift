import UIKit

final class BaseViewController: UIViewController {
    var screen: UIView?

    override func loadView() {
        self.view = screen
    }

    init(from screen: UIView) {
        self.screen = screen
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) did load")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) will appear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) will will layout subviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) will did layout subviews")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        guard let screenName = screen?.accessibilityLabel else { return }
        print("Controller with: \(screenName) did disappear")
    }
}
