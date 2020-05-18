import UIKit

// MARK: - Layout Setup
extension ViewController {
    
    func setupButton() {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("START FEATURE", for: .normal)
        button.layer.borderColor = UIColor.systemGreen.cgColor
        button.layer.borderWidth = 5
        button.layer.cornerRadius = 10
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        button.addTarget(self, action: #selector(startFeature), for: .touchUpInside)
    }
    
    func setupSwitch() {
        let switchButton = UISwitch()
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(switchButton)
        
        NSLayoutConstraint.activate([
            switchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            switchButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
        ])
        
        switchButton.isOn = viewModel.shouldPresentFeature()
        switchButton.addTarget(self, action: #selector(toggleFeature), for: .valueChanged)
    }
    
    func setupLayout() {
        setupButton()
        setupSwitch()
        
        view.backgroundColor = .white
    }
}
