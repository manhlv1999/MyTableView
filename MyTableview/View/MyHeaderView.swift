
import UIKit

class MyHeaderView: UITableViewHeaderFooterView {
    
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Rainie"
        label.font = .boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nameLabels: UILabel = {
        var label = UILabel()
        label.text = "Rainie"
        label.font = .boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var image: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 5
        imageview.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageview.image = UIImage(named: "icon")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 50
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.image = UIImage(named: "icon_avatar")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let item1 = ViewStask()
    let item2 = ViewStask()
    let item3 = ViewStask()
    let item4 = ViewStask()
    
    
    var data: Header! {
        didSet {
            fillData()
        }
    }
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addSubview(nameLabel)
        self.addSubview(image)
        self.addSubview(avatarImageView)
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(item1)
        stackView.addArrangedSubview(item2)
        stackView.addArrangedSubview(item3)
        stackView.addArrangedSubview(item4)
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            image.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 10),
            
            avatarImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10)
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func fillData() {
        if data == nil {return}
        
        nameLabel.text = data.name
        image.image = UIImage(named: data.image)
        avatarImageView.image = UIImage(named: data.avatarname)
        item1.nameIconLabel.text = data.actions[0].title
        item2.nameIconLabel.text = data.actions[1].title
        item3.nameIconLabel.text = data.actions[2].title
        item4.nameIconLabel.text = data.actions[3].title
        item1.iconImageView.image = UIImage(named: data.actions[0].icon)
        item2.iconImageView.image = UIImage(named: data.actions[1].icon)
        item3.iconImageView.image = UIImage(named: data.actions[2].icon)
        item4.iconImageView.image = UIImage(named: data.actions[3].icon)
    }
}
