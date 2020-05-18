import UIKit
import CoreSample

public final class FeatureCoordinator: Coordinator {

    public var rootViewController: UIViewController
    private var navigationController: UINavigationController?
    
    public init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    public func start(animated: Bool = true) {
        let viewController = FeatureViewController(coordinator: self)
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.isHidden = true
        self.navigationController = nav
        rootViewController.present(nav, animated: animated)
    }
}
