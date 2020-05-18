import UIKit
import CoreSample

final class FeatureViewModel {
    // MARK: - Injected dependencies
    @Inject() private var colorRepository: ColorRepository
    
    // MARK: - Properties
    var mainColor: UIColor = .black
    
    init() {
        updateMainColorFromRepository()
    }
    
    func updateMainColorFromRepository() {
        colorRepository.fetchColor { result in
            if case let .success(color) = result {
                self.mainColor = color
            }
        }
    }
}
