import CoreSample

protocol SampleViewModelProtocol: Component {
    func shouldPresentFeature() -> Bool
    func toggleFeature()
}
