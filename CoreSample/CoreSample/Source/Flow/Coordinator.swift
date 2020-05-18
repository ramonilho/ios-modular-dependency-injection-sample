import UIKit

public protocol Coordinator: AnyObject {
    var rootViewController: UIViewController { get }
    
    func start(animated: Bool)
}
