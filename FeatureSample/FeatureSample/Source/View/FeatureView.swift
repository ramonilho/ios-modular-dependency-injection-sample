import UIKit

final class FeatureView: UIView {
    
    lazy var titleLabel = createTitleLabel()
    
    required init?(coder: NSCoder) { return nil }
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewCode()
    }
}

extension FeatureView {
    func buildViewHierarchy() {
        addSubview(titleLabel)
    }
    
    func buildConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    func buildViewCode() {
        buildViewHierarchy()
        buildConstraints()
        
        titleLabel.text = "pull down\nto dismiss ⬇️"
    }
}

private extension FeatureView {
    func createTitleLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 34, weight: .light)
        label.numberOfLines = 0
        label.textColor = .darkGray
        return label
    }
}
