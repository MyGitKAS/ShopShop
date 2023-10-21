
import UIKit

extension UITextField {
    func theLogin(placeHolder text: String) {
        self.layer.cornerRadius = 15
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.textAlignment = .center
        self.attributedPlaceholder = NSAttributedString(string: text, attributes: [.foregroundColor: UIColor.placeholderText])
        
    }
}
