
import UIKit

class ViewStask: UIView {
    
    var iconImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 15
        imageview.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: "icon_3")
        return imageview
    }()
    var nameIconLabel: UILabel = {
        var label = UILabel()
        label.text = "Forum"
        label.textAlignment = .center
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        self.addSubview(iconImageView)
        self.addSubview(nameIconLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            iconImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            iconImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            
            nameIconLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            nameIconLabel.topAnchor.constraint(equalTo: self.iconImageView.bottomAnchor, constant: 10),
            nameIconLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            nameIconLabel.centerXAnchor.constraint(equalTo: self.iconImageView.centerXAnchor, constant: 0)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder : coder)
    }
}
