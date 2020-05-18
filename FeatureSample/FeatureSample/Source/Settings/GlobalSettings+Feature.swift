import CoreSample

public extension GlobalSettings {
    enum FeatureSample {
        @Setting(key: "IS_FEATURE_SAMPLE_ENABLED", defaultValue: false)
        public static var isEnabled: Bool
    }
}
