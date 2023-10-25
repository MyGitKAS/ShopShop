
import UIKit
import SnapKit

class ProductCell: UIStackView{
    var imageView = UIImageView()
    let productTitleLabel = UILabel()
    let productPriceLabel = UILabel()
    let horisontalStack = UIStackView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        axis = .vertical
        addArrangedSubview(imageView)
        addArrangedSubview(horisontalStack)
        
        horisontalStack.axis = .horizontal
        horisontalStack.addArrangedSubview(productTitleLabel)
        horisontalStack.addArrangedSubview(productPriceLabel)
        
        let size = CGSize(width: 100, height: 100)
        imageView.image = UIImage(systemName: "productPH")!.resizeImage(to: size)!
        
        productTitleLabel.text = "Product Product"
        productPriceLabel.text = "000 $"
    }
    
}


