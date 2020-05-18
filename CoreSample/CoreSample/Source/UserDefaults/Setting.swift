@propertyWrapper
public struct Setting<T> {
    public let key: String
    public let defaultValue: T
    
    public var source: UserDefaults = UserDefaults.standard
    
    public var wrappedValue: T {
        get {
            return source.object(forKey: key) as? T ?? defaultValue
        }
        set {
            source.set(newValue, forKey: key)
        }
    }
    
    public init(key: String, defaultValue: T, source: UserDefaults) {
        self.key = key
        self.defaultValue = defaultValue
        self.source = source
    }
}

public extension Setting {
    init(key: String, defaultValue: T) {
        self.init(key: key, defaultValue: defaultValue, source: GlobalSettings.source)
    }
}
