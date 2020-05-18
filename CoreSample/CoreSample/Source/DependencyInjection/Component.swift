public protocol Component { }

@propertyWrapper
public struct Inject<Component> {
    public var component: Component
    public var resolver: ResolverProtocol
    
    public init(_ resolver: ResolverProtocol) {
        self.resolver = resolver
        self.component = resolver.resolve(Component.self)
    }
    
    public var wrappedValue: Component {
        get { return component }
        mutating set { component = newValue }
    }
}
