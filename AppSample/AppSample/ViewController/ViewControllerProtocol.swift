import Foundation

@objc protocol ViewControllerProtocol: AnyObject {
    func toggleFeature()
    func startFeatureIfAvailable(_ presented: (() -> Void)?)
}
