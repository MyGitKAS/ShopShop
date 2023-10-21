
import UIKit

class AuthentificationView: UIStackView {
    
    let emailTextField = UITextField()
    let passvordTextField = UITextField()
    let loginButton = UIButton()
    let registrationButton = UIButton()
    
    var onRegistrationButtonTapped: (() -> Void)?
    var onLoginButtonTapped: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        self.backgroundColor = .lightGray
        
        emailTextField.theLogin(placeHolder: "Email")
        passvordTextField.theLogin(placeHolder: "Passvord")
        
        loginButton.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 15
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        registrationButton.setTitle("Registration", for: .normal)
        registrationButton.setTitleColor(.blue, for: .normal)
        registrationButton.addTarget(self, action: #selector(registrationButtonTapped), for: .touchUpInside)
       
        
        let margins: CGFloat = 20
        backgroundColor = .white
        distribution = .fillEqually
        axis = .vertical
        layer.cornerRadius = 15
        spacing = 20
        addArrangedSubview(emailTextField)
        addArrangedSubview(passvordTextField)
        addArrangedSubview(loginButton)
        addArrangedSubview(registrationButton)
        layoutMargins = UIEdgeInsets(top: margins, left: margins, bottom: margins, right: margins)
        isLayoutMarginsRelativeArrangement = true
    }
    
    @objc func registrationButtonTapped() {
        onRegistrationButtonTapped?()
    }
    
    @objc func loginButtonTapped() {
        onLoginButtonTapped?()
    }
    
}

