import UIKit

open class BaseViewController: UIViewController, Component {
    public required init?(coder: NSCoder) { return nil }
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
}
