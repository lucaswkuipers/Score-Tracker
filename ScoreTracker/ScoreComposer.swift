import UIKit

struct ScoreComposer {

    static func makeScene() -> UIViewController {
        let view = ScoreView()
        let viewController = BaseViewController(from: view)
        return viewController
    }
}
