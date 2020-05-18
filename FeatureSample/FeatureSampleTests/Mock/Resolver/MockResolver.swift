import CoreSample
@testable import FeatureSample

final class MockResolver: ResolverProtocol {
    static var shared: ResolverProtocol = MockResolver()
    var factoryDict: [String : () -> Component] = [:]
    
    init() {
        add(type: ColorRepository.self) { MockColorRepository() }
    }
}

internal extension Inject {
    init() {
        self.init(MockResolver.shared)
    }
}
