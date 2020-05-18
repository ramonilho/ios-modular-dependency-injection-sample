import UIKit

final class FeatureViewController: UIViewController {
    
    // MARK: - Properties
    var coordinator: FeatureCoordinator
    let viewModel = FeatureViewModel()
    let customView = FeatureView()
    
    // MARK: - Initialization
    required init?(coder: NSCoder) { return nil }
    init(coordinator: FeatureCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
}

extension FeatureViewController {
    // MARK: - Lifecycle
    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = viewModel.mainColor
    }
}
