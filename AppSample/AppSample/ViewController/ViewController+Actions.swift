import UIKit
import FeatureSample

// MARK: - Actions
extension ViewController {
    @objc func startFeature() {
        self.startFeatureIfAvailable()
    }
    
    func presentFeature() {
        print("Yeaaaah, feature its working! ✅")
        FeatureCoordinator(rootViewController: self).start()
    }
    
    func presentFeatureError() {
        print("Ooooops, feature is not enabled! 💥")
    }
}
