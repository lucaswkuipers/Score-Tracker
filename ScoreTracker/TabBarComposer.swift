import UIKit

struct TabBarComposer {
    static func makeTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        let firstViewController = GameComposer.makeScene()
        let firstTabBarItem = UITabBarItem(title: "Game",
                                           image: UIImage(systemName: "puzzlepiece"),
                                           selectedImage: UIImage(systemName: "puzzlepiece.fill"))
        firstViewController.tabBarItem = firstTabBarItem
        tabBar.setViewControllers([firstViewController], animated: true)
        return tabBar
    }
}
