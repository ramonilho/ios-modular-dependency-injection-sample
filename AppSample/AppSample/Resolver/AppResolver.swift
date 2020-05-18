import CoreSample

final class AppResolver: ResolverProtocol {
    
    static var shared: ResolverProtocol = AppResolver()
    
    var factoryDict: [String : () -> Component] = [:]
    
    init() {
        add(type: ViewController.self) { ViewController() }
        add(type: SampleRepository.self) { SampleRepository() }
        add(type: SampleViewModel.self) { SampleViewModel() }
    }
}

extension Inject {
    init() {
        self.init(AppResolver.shared)
    }
}
