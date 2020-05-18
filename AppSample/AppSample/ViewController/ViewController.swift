import UIKit
import CoreSample

final class ViewController: BaseViewController {
    /// Don't need to implement it here, because `@Inject()` notation treats it
    @Inject() var viewModel: SampleViewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}

extension ViewController: ViewControllerProtocol {
    @objc func startFeatureIfAvailable(_ presented: (() -> Void)? = nil) {
        if viewModel.shouldPresentFeature() {
            presentFeature()
            presented?()
        } else {
            presentFeatureError()
        }
    }
    
    @objc func toggleFeature() {
        viewModel.toggleFeature()
    }
}
