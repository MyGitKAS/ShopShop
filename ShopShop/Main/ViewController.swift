

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let topLabel = UILabel()
    private let authView = AuthentificationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(gradienCreate())
        view.addSubview(topLabel)
        view.addSubview(authView)
      
        setConstraints()
        configure()
        
        registrationButtonTapped()
        loginButtonTapped()
    }

    private func configure() {
        topLabel.text = "Authentication"
        topLabel.font = UIFont(name: "Trebuchet MS", size: 35)
        authView.backgroundColor = #colorLiteral(red: 0.7806198089, green: 0.7787777184, blue: 0.7624268573, alpha: 0.52)
    }
    
    private func registrationButtonTapped() {
        authView.onRegistrationButtonTapped = { [weak self] in
            guard let self = self else { return }
            let vc = RegistrationViewController()
            self.present(vc, animated: true)
            }
    }
    
    private func loginButtonTapped() {
        authView.onLoginButtonTapped = { [weak self] in
            guard let self = self else { return }
            let vc = RegistrationViewController()
            self.present(vc, animated: true)
            }
    }
    
    
}

extension ViewController {
    
    private func setConstraints() {
        
        topLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(260)
            make.centerX.equalToSuperview()
        }
        
        authView.snp.makeConstraints { make in
            make.top.equalTo(topLabel.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
            make.width.equalTo(330)
            make.height.equalTo(270)
            
        }
    }
    
}

extension ViewController {
    func gradienCreate() -> CAGradientLayer  {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemGreen.cgColor, UIColor.systemGray4.cgColor]
        gradient.type = .axial
        gradient.startPoint = CGPoint(x: 0.3, y: 1)
        gradient.endPoint = CGPoint(x: 0.5, y: 0)
        gradient.frame = view.frame
        return gradient
    }
}
