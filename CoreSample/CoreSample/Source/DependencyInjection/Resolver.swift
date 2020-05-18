public protocol ResolverProtocol: AnyObject {
    
    // MARK: - Properties
    
    /// Unique instance
    static var shared: ResolverProtocol { get }
    
    /// Dictionary that holds all closures that creates given dependencies
    var factoryDict: [String: () -> Component] { get set }
    
    // MARK: - Methods
    
    /// Adds a new factory into dictionary
    func add(type: Component.Type, _ factory: @escaping () -> Component)
    
    /// Retrieves the component
    func resolve<Component>(_ type: Component.Type) -> Component
}

public extension ResolverProtocol {
    func add(type: Component.Type, _ factory: @escaping () -> Component) {
        factoryDict[String(describing: type.self)] = factory
    }
    
    func resolve<Component>(_ type: Component.Type) -> Component {
        let componentKey = String(describing: Component.self)
        let component: Component = factoryDict[componentKey]?() as! Component
        return component
    }
}
