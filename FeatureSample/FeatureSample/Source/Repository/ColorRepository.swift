import UIKit
import CoreSample

protocol ColorRepositoryProtocol: AnyObject, Component {
    func fetchColor(completion: @escaping (Result<UIColor, Error>) -> Void)
}

class ColorRepository: ColorRepositoryProtocol {
    func fetchColor(completion: @escaping (Result<UIColor, Error>) -> Void) {
        completion(.success(.systemGreen))
    }
}
