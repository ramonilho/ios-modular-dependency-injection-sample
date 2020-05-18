import XCTest
import CoreSample
@testable import FeatureSample

class FeatureViewModelTests: XCTestCase {

    override func setUp() {
        FeatureResolver.shared = MockResolver()
    }

    func testMainColorFromMockInjection() {
        // Given
        // When
        let sut = FeatureViewModel()
        
        // Then
        XCTAssertEqual(sut.mainColor, UIColor.blue)
    }
    
    func testAlteredMainColorFromMockInjection() {
        // Given
        FeatureResolver.shared.add(type: ColorRepository.self) {
            return MockColorRepository(fetchColorResult: .red)
        }
        
        // When
        let sut = FeatureViewModel()
        
        // Then
        XCTAssertEqual(sut.mainColor, UIColor.red)
    }
}
