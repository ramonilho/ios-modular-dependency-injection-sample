import XCTest
@testable import AppSample

class SampleViewControllerTests: XCTestCase {
    
    var mockViewModel: MockViewModel!

    override func setUp() {
        self.mockViewModel = MockViewModel()
        AppResolver.shared.add(type: SampleViewModel.self) { return self.mockViewModel }
    }

    func testShouldPresentFeature() {
        // Given
        let sut = ViewController()
        mockViewModel.mockShouldPresentFeature = true
        
        // When
        var didStartFeature = false
        sut.startFeatureIfAvailable {
            didStartFeature = true
        }
        
        // Then
        XCTAssertTrue(didStartFeature)
    }
    
    func testShouldNotPresentFeature() {
        // Given
        let sut = ViewController()
        mockViewModel.mockShouldPresentFeature = false
        
        // When
        var didStartFeature = false
        sut.startFeatureIfAvailable {
            didStartFeature = true
        }
        
        // Then
        XCTAssertFalse(didStartFeature)
    }
    
    func testToggleFeature() {
        // Given
        let sut = ViewController()
        
        // When
        sut.toggleFeature()
        
        // Then
        XCTAssertEqual(mockViewModel.calledMethods, [.toggleFeature])
    }
}
