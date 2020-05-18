import CoreSample

final class SampleRepository: Component {
    var fetchedText: String = #file
    
    func logFile() {
        print("[SampleRepository] Logging from: \(fetchedText)")
    }
}
