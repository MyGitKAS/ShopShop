import UIKit

class ShopTapBarController: UITabBarController {
    
    let firstViewController = CatalogViewController()
    let secondViewController = CartViewController()
    let thirdViewController = AccountViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.tabBar.backgroundColor = .white
        configure()
    }
    
    private func configure() {
        firstViewController.tabBarItem = UITabBarItem(title: "Catalog", image: UIImage(named: "tabCatalog"), tag: 0)
        secondViewController.tabBarItem = UITabBarItem(title: "Cart", image: UIImage(named: "tabBuyCart"), tag: 1)
        thirdViewController.tabBarItem = UITabBarItem(title: "Account", image: UIImage(named: "tabUser"), tag: 2)
        viewControllers = [firstViewController, secondViewController, thirdViewController]
    }
}
