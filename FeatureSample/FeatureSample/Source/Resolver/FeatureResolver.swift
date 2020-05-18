import CoreSample

final class FeatureResolver: ResolverProtocol {
    
    static var shared: ResolverProtocol = FeatureResolver()
    
    var factoryDict: [String : () -> Component] = [:]
    
    init() {
        add(type: ColorRepository.self) { ColorRepository() }
    }
}

extension Inject {
    init() {
        self.init(FeatureResolver.shared)
    }
}
