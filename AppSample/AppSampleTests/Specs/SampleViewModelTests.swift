import XCTest
import CoreSample
import FeatureSample
@testable import AppSample

class SampleViewModelTests: XCTestCase {

    override class func setUp() {
        super.setUp()
        GlobalSettings.source = UserDefaults(suiteName: #file)!
        GlobalSettings.source.removePersistentDomain(forName: #file)
    }
    
    func testFeatureToggleOn() {
        // Given
        GlobalSettings.FeatureSample.isEnabled = true
        
        // When
        let sut = SampleViewModel()
        let featureIsOn = sut.shouldPresentFeature()
        
        // Then
        XCTAssertTrue(featureIsOn)
    }
    
    func testFeatureToggleOff() {
        // Given
        GlobalSettings.FeatureSample.isEnabled = false
        
        // When
        let sut = SampleViewModel()
        let featureIsOn = sut.shouldPresentFeature()
        
        // Then
        XCTAssertFalse(featureIsOn)
    }
}
