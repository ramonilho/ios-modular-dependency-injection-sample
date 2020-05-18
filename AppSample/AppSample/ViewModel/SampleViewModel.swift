import CoreSample

class SampleViewModel: SampleViewModelProtocol {
    
    @Inject() var sampleRepository: SampleRepository
    
    init() {
        sampleRepository.logFile()
    }
    
    func shouldPresentFeature() -> Bool {
        return GlobalSettings.FeatureSample.isEnabled
    }
    
    func toggleFeature() {
        DispatchQueue.main.async {
            GlobalSettings.FeatureSample.isEnabled.toggle()
        }
    }
}
