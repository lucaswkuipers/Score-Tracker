import UIKit

struct GameComposer {

    static func makeScene() -> UIViewController {
        let view = GameView()
        let viewController = UINavigationController(rootViewController: BaseViewController(from: view, title: "My game"))
        viewController.navigationBar.prefersLargeTitles = true
        return viewController
    }
}
