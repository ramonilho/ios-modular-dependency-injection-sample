import UIKit
import CoreSample
@testable import FeatureSample

class MockColorRepository: ColorRepository {
    
    var fetchColorResult: UIColor
    
    init(fetchColorResult: UIColor = .blue) {
        self.fetchColorResult = fetchColorResult
    }
    
    override func fetchColor(completion: @escaping (Result<UIColor, Error>) -> Void) {
        completion(.success(fetchColorResult))
    }
}
