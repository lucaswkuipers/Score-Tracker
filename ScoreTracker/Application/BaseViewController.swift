import UIKit

protocol BaseViewControllerDelegate {
    func viewDidLoad()
    func viewWillAppear()
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

final class BaseViewController: UIViewController {
    var delegate: BaseViewControllerDelegate?
    var screen: UIView?

    override func loadView() {
        self.view = screen
    }

    init(from screen: UIView, title: String? = nil) {
        self.screen = screen
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.viewDidLoad()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Did Load")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        delegate?.viewWillAppear()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Will Appear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        delegate?.viewWillLayoutSubviews()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Will Layout Subviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        delegate?.viewDidLayoutSubviews()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Did Layout Subviews")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delegate?.viewDidAppear()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Did Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.viewWillDisappear()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Will Disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        delegate?.viewDidDisappear()

        guard let screenName = screen?.accessibilityLabel else { return }
        print("[\(screenName)] Did Disappear")
    }
}
