@testable import AppSample

class MockViewModel: SampleViewModel {
    
    enum Method {
        case shouldPresentFeature
        case toggleFeature
    }
    
    var calledMethods: [Method] = []
    var mockShouldPresentFeature: Bool = false
    
    override func shouldPresentFeature() -> Bool {
        calledMethods.append(.shouldPresentFeature)
        return mockShouldPresentFeature
    }
    
    override func toggleFeature() {
        calledMethods.append(.toggleFeature)
        mockShouldPresentFeature.toggle()
    }
}
