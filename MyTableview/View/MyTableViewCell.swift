//
//  MyTableViewCell.swift
//  MyTableview
//
//  Created by Le Manh on 8/3/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    var imageViewIcon: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.widthAnchor.constraint(equalToConstant: 20).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: "icon_demo")
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var data: List! {
        didSet {
            fillData()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.accessoryType = .disclosureIndicator
        
        self.addSubview(imageViewIcon)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        
        
        NSLayoutConstraint.activate([
            imageViewIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageViewIcon.topAnchor.constraint(greaterThanOrEqualTo: self.topAnchor, constant: 20),
            imageViewIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: self.imageViewIcon.trailingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: self.imageViewIcon.centerYAnchor, constant: 0),
            
            subTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            subTitleLabel.centerYAnchor.constraint(equalTo: self.imageViewIcon.centerYAnchor, constant: 0),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder : coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func fillData() {
        if data == nil {return}
        
        imageViewIcon.image = UIImage(named: data.image)
        titleLabel.text = data.title
        subTitleLabel.text = data.subtitle
    }

}
